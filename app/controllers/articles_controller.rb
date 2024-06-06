# frozen_string_literal: true

class ArticlesController < ApplicationController
  def show
    @article = Article.includes(:category, :author, comments: :user).friendly.find(params[:id])
    @other_articles = Article.all.sample(3)
    @comments = comments_sorted_by

    respond_to do |format|
      format.html
      format.pdf do
        browser = Ferrum::Browser.new(timeout: 15, window_size: [1920, 1080])
        browser.go_to(article_url(@article))
        browser.page.network.wait_for_idle
        browser.screenshot(path: "public/#{@article.id}.png", full: true)
        browser.quit

        png = Magick::ImageList.new(Rails.root.join("public/#{@article.id}.png"))
        png.write(Rails.root.join("public/#{@article.id}.pdf"))

        send_file("public/#{@article.id}.pdf", type: "application/pdf", disposition: "inline")
      end
    end
  end

  private

  def comments_sorted_by
    return @article.comments.order(created_at: :desc) if params[:sort_by] == "more_recents"

    @article.comments.order(created_at: :asc)
  end
end

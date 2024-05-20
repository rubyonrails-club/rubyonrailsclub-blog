# frozen_string_literal: true

class ArticlesController < ApplicationController
  def show
    @article = Article.includes(:category, :author, comments: :user).friendly.find(params[:id])
    @other_articles = Article.all.sample(3)
    @comments = comments_sorted_by
  end

  private

  def comments_sorted_by
    return @article.comments.order(created_at: :desc) if params[:sort_by] == "more_recents"

    @article.comments.order(created_at: :asc)
  end
end

# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @article = Article.friendly.find(params[:article_id])
    @article.comments.create!(comments_params)

    redirect_to(article_path(@article))
  end

  private

  def comments_params
    params.require(:comment).permit(:body)
  end
end

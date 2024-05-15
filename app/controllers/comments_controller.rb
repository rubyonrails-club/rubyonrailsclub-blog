# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @article = Article.friendly.find(params[:article_id])
    @article.comments.create!(comments_params)

    redirect_to(article_path(@article))
  end

  private

  def comments_params
    params.require(:comment).permit(:body).merge(user: current_user)
  end
end

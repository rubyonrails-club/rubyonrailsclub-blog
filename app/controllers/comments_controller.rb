# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @article = Article.friendly.find(params[:article_id])
    comment = @article.comments.new(comments_params)

    if comment.save
      redirect_to(article_path(@article), notice: "Commentário criado com sucesso!")
    else
      redirect_to(article_path(@article), alert: "Erro ao criar comentário! - #{comment.errors.full_messages.join(",")}")
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:body).merge(user: current_user)
  end
end

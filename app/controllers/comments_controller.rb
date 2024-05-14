# frozen_string_literal: true

class CommentsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
    @comments = @article.comments

    p(@comments)
    p("*" * 100)
  end
end

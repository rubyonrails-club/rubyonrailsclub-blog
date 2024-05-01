# frozen_string_literal: true

class ArticlesController < ApplicationController
  def show
    @article = Article.friendly.find(params[:id])
    @other_articles = Article.all.sample(3)
  end
end

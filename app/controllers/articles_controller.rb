# frozen_string_literal: true

class ArticlesController < ApplicationController
  def show
    @article = Article.friendly.find(params[:id])
  end
end

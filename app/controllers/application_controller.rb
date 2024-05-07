# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_footer_data

  def set_footer_data
    return if params[:controller].split("/").first == "administrate"

    @footer_categories_1 = Category.all.order(created_at: :asc).limit(4)
    @footer_categories_2 = Category.all.order(created_at: :desc).limit(4)
    @footer_articles = Article.all.sample(4)
  end
end

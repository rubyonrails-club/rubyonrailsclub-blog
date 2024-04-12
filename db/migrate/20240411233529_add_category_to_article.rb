# frozen_string_literal: true

class AddCategoryToArticle < ActiveRecord::Migration[7.1]
  def change
    add_reference(:articles, :category, foreign_key: true, type: :uuid)
  end
end

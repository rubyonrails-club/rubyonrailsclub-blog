# frozen_string_literal: true

class AddAuthorToArticle < ActiveRecord::Migration[7.1]
  def change
    add_reference(:articles, :author, null: true, foreign_key: true, type: :uuid)
  end
end

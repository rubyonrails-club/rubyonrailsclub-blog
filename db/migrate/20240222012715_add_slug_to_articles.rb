# frozen_string_literal: true

class AddSlugToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column(:articles, :slug, :string)
    add_index(:articles, :slug, unique: true)
  end
end

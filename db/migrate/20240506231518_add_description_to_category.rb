# frozen_string_literal: true

class AddDescriptionToCategory < ActiveRecord::Migration[7.1]
  def change
    add_column(:categories, :description, :text)
  end
end

# frozen_string_literal: true

class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :category
  belongs_to :author

  has_many :comments, dependent: :destroy

  has_one_attached :cover_image
end

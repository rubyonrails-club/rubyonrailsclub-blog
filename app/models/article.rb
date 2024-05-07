# frozen_string_literal: true

class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :category
  belongs_to :author

  has_many :comments, dependent: :destroy

  has_one_attached :cover_image do |attachable|
    attachable.variant(:thumb, resize_to_limit: [325, 205])
    attachable.variant(:medium, resize_to_limit: [850, 650])
  end
end

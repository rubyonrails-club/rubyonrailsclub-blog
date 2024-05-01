# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :articles, dependent: :nullify

  has_one_attached :avatar_image
end

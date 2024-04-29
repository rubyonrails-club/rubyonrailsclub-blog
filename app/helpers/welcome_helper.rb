# frozen_string_literal: true

module WelcomeHelper
  def cover_image_fallback(article, size = :thumb)
    article.cover_image.attached? ? article.cover_image.variant(size) : "posts/post1.jpg"
  end
end

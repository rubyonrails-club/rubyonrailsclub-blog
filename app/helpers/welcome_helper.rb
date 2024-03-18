# frozen_string_literal: true

module WelcomeHelper
  def cover_image_fallback(article)
    article.cover_image.attached? ? article.cover_image.variant(:thumb) : "posts/post1.jpg"
  end
end

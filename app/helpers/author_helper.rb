# frozen_string_literal: true

module AuthorHelper
  def avatar_image_fallback(author)
    author.avatar_image.attached? ? author.avatar_image : "avatar/avatar-1.png"
  end
end

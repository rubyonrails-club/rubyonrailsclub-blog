# frozen_string_literal: true

module ApplicationHelper
  def active_link?(controller_link)
    "active" if controller_name == controller_link
  end
end

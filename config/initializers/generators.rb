# frozen_string_literal: true

Rails.application.config.generators do |generator|
  generator.orm(:active_record, primary_key_type: :uuid)
end

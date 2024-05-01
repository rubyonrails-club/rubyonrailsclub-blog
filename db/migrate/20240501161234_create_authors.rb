# frozen_string_literal: true

class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table(:authors, id: :uuid) do |t|
      t.string(:name)
      t.text(:description)
      t.string(:facebook_profile_url)
      t.string(:instagram_profile_url)
      t.string(:twitter_profile_url)
      t.string(:linkedin_profile_url)
      t.string(:youtube_profile_url)

      t.timestamps
    end
  end
end

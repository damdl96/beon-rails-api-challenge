class Tweet < ApplicationRecord
  belongs_to :user

  scope :get_cronologically, -> { order(created_at: :DESC) }
  scope :get_by_user,        -> (username) { joins(:user).where(users: { username: username }) }
end

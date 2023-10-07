class UserMovie < ApplicationRecord
  belongs_to :users

  validates :user_id, :movie_api_id, :rent_date, :return_date, :value, presence: true
end

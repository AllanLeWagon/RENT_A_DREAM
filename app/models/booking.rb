class Booking < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :user_id
  belongs_to :article, foreign_key: :article_id

  validates :date, presence: true
end

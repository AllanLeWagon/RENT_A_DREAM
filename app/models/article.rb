class Article < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :user_id
  # has_one_attached :image_url
end

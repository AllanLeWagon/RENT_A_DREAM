class Article < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :user_id
  has_one_attached :image

  validates :image, attached: true
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :service_type, presence: true
end

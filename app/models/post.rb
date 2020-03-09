class Post < ApplicationRecord
  belongs_to :user
  has_many :comment
  validates :post, length: { maximum: 255 }, presence: true
end

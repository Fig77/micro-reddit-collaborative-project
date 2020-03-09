class User < ApplicationRecord
  has_many :post
  has_many :comment
  validates :name, length: { maximum: 45 }, presence: true
end

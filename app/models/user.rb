class User < ApplicationRecord
  has_many :post, class_name: 'Post', foreign_key: 'id'
  validates :name, length: { maximum: 45 }, presence: true
end

class User < ApplicationRecord
  has_many :post, class_name: 'Post', foreign_key: 'idUser'
  has_many :comment, class_name: 'Comment', foreign_key: 'idUser'
  validates :username, length: { maximum: 45 }, presence: true
end

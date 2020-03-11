class User < ApplicationRecord
  has_many :posts, class_name: 'Post', foreign_key: 'idUser'
  has_many :comments, class_name: 'Comment', foreign_key: 'idUser'
  validates :username, length: { maximum: 45 }, presence: true
end

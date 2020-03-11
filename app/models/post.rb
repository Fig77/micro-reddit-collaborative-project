class Post < ApplicationRecord
  has_many :comments, class_name: 'Comment', foreign_key: 'idPost'
  belongs_to :user, class_name: 'User', foreign_key: 'idUser'
  validates :idUser, presence: true
  validates :post, length: { maximum: 255 }, presence: true
end

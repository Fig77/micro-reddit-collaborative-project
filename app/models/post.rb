class Post < ApplicationRecord
  belongs_to :users, class_name: 'User', foreign_key: 'idUser'
  validates :idUser, presence: true
  validates :post, length: { maximum: 255 }, presence: true
end

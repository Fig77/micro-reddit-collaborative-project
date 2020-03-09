class Post < ApplicationRecord
	belongs_to :user
	has_many :comment
	validate :post, length: { maximum: 255 }, presence: true
end

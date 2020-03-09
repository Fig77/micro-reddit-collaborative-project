class Comment < ApplicationRecord
	belongs_to :post
	validate :content, length: { maximum: 255 }, presence: true
end

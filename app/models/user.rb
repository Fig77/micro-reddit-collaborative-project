class User < ApplicationRecord
	has_many :post, :commet
	validate :name, length: { maximum: 45 }, presence: true
end

class Comment < ApplicationRecord
 belongs_to :post, class_name: 'Post', foreign_key: 'idPost'
 belongs_to :user, class_name: 'User', foreign_key: 'idUser'
 # belongs_to :user, class_name: 'User', foreign_key: 'idUser'
end

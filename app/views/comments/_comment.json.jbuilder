json.extract! comment, :id, :idUser, :idPost, :content, :created_at, :updated_at
json.url comment_url(comment, format: :json)

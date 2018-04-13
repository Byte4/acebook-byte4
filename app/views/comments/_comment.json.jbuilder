json.extract! comment, :id, :message, :users_id, :posts_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)

json.extract! reaction, :id, :like, :dislike, :user_id, :post_id, :created_at, :updated_at
json.url reaction_url(reaction, format: :json)

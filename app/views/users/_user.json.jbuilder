json.extract! user, :id, :provider, :uid, :nickname, :name, :email, :token, :token_expires_at, :created_at, :updated_at
json.url user_url(user, format: :json)

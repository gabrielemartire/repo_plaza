json.extract! repository, :id, :user_id, :name, :full_name, :url, :last_commit_at, :archived, :created_at, :updated_at
json.url repository_url(repository, format: :json)

json.extract! repository, :id, :title, :description, :url, :last_commit_at, :archived, :created_at, :updated_at
json.url repository_url(repository, format: :json)

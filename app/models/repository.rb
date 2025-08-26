# ["id",
#  "title",
#  "description",
#  "url",
#  "last_commit_at",
#  "archived",
#  "created_at",
#  "updated_at",
#  "user_id"]

class Repository < ApplicationRecord
  has_and_belongs_to_many :user

  def status
    return "archived" if archived
    return "inactive" if last_commit_at && last_commit_at < 6.months.ago
    "active"
  end
end

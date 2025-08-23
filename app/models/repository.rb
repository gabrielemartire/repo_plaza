class Repository < ApplicationRecord
  belongs_to :user

  def status
    return "archived" if archived
    return "inactive" if last_commit_at && last_commit_at < 6.months.ago
    "active"
  end
end

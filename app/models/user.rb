#  ["id",
#  "provider",
#  "uid",
#  "nickname",
#  "name",
#  "email",
#  "token",
#  "token_expires_at",
#  "created_at",
#  "updated_at",
#  "encrypted_password",
#  "reset_password_token",
#  "reset_password_sent_at",
#  "remember_created_at"]

class User < ApplicationRecord
  devise :database_authenticatable, :rememberable, :validatable, stretches: 13
  has_and_belongs_to_many :repositories

  validates :email, presence: true, uniqueness: true
  validates :role, inclusion: { in: %w[user admin moderator] }

  def admin?
    self.role == "admin"
  end

  private

  before_validation :set_default_role, on: :create
  
  def set_default_role
    self.role ||= 'user'
  end
end

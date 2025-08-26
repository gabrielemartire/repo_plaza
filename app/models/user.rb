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
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, stretches: 13
  has_and_belongs_to_many :repositories
end

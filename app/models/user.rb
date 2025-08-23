class User < ApplicationRecord
  has_many :repositories, dependent: :destroy
end

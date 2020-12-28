class Group < ApplicationRecord
  validates :name, presence: true
  has_many :users
  has_many :santas
  group.password = Devise.friendly_token[0,6]
end
class Company < ApplicationRecord
  has_many :service_users, through: :services
  validates :name, presence: true
end

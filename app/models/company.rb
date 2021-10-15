class Company < ApplicationRecord
  has_many :services, through: :service_users
  validates :name, presence: true
end

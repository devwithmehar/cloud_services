class Service < ApplicationRecord
  belongs_to :cloud
  belongs_to :type
  has_many :service_users, through: :companies
  validates :name, :description, :price, presence: true
end

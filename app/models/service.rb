class Service < ApplicationRecord
  belongs_to :cloud
  belongs_to :type
  has_many :companies, through: :service_users
  validates :name, :description, :price, presence: true
end

class Service < ApplicationRecord
  belongs_to :cloud
  belongs_to :type
  validates :name, :description, :price, presence: true
end

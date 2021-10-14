class Type < ApplicationRecord
  has_many :services
  validates :name, presence: true
  validates :name, uniqueness: true
end

class ServiceUser < ApplicationRecord
  belongs_to :company
  belongs_to :service
end

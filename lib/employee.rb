class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :hourly_rate,  presence: true
end

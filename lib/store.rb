class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
end

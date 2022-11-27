class Location < ApplicationRecord
  validates :location_name, presence: true
  validates :address, presence: true
  validates :zip, presence: true
  validates :category, presence: true

end
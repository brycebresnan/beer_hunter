class Location < ApplicationRecord
  validates :location_name, presence: true
  validates :address, presence: true
  validates :zip, presence: true
  validates :category, presence: true

  def self.search(location_name)
    # Quote.all.where("author = ?," "#{quote_author}")
    Location.where("location_name = ?", ("#{location_name}"))
    #Quote.where("author") = quote_author)
    # Quote.all
  end
end
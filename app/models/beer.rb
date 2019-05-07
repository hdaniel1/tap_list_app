class Beer < ApplicationRecord
	belongs_to :brewery
	has_many :retailer_beers
	has_many :retailers, through: :retailer_beers
	has_many :favorite_beers
	has_many :users, through: :favorite_beers
	accepts_nested_attributes_for :retailer_beers
end 

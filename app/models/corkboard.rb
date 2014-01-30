class Corkboard < ActiveRecord::Base
	has_many :pins
	belongs_to :user
	
end

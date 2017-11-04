class Location < ApplicationRecord
	has_many :projects
	has_many :users

end

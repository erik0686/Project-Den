class Project < ApplicationRecord
	belongs_to :location
	has_many :project_tags
	has_many :tags, through: :project_tags
	has_many :users, through: :project_users
end

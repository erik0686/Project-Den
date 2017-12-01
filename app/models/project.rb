class Project < ApplicationRecord
	has_many :project_tags
	has_many :tags, through: :project_tags
	has_many :project_users
	has_many :users, through: :project_users
	belongs_to :user
end

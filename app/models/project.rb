class Project < ApplicationRecord
	has_many :project_tags
	has_many :tags, through: :project_tags
	has_many :project_users
	has_many :users, through: :project_users
	belongs_to :user


	validates :max_capacity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	validates :name, :max_capacity, :description, :status, :start_date, :end_date, :profile, presence: true

end

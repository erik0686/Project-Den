class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :project_users
  has_many :projects, through: :project_users
  has_many :personal_projects, class_name: Project
  has_many :tags, through: :user_tags
  
end

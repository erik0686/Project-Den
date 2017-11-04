module ApplicationHelper

	def get_project_tags(project)
		project.tags.pluck(:name)
	end
end

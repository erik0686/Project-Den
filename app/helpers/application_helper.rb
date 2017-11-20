module ApplicationHelper

	def get_project_tags(project)
		project.tags.pluck(:name)
	end

	def status_combo
		["Abierto", "En Curso", "Cerrado"]
	end
end

class ProjectsController < ApplicationController
  def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.user_id = current_user.id
		if @project.save
			redirect_to projects_path
		else
			render 'new'
		end
	end

	def index
		@projects = Project.all
		@project_user = ProjectUser.new
	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to @project
    else
    	render 'edit'
    end
    respond_to do |format|
      format.js
      format.html
    end
	end

	def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :max_capacity, :capacity, :status, :start_date, :end_date, :profile, :user_id, :description)
  end
end

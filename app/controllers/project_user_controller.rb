class ProjectUserController < ApplicationController
	def new
		@project_user = ProjectUser.new
	end

	def create
		@project_user = ProjectUser.new
    @project_user.user_id = params[:user_id]
    @project_user.project_id = params[:project_id]
    binding.pry
		if @project_user.save
			redirect_to projects_path
		else
			render 'new'
		end
	end

	def destroy
    @project_user = ProjectUser.find(params[:id])
    @project_user.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project_user).permit(:project_id, :user_id, :type)
  end
end

class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render :index
  end

  def show
    @project = Project.find(params[:id])
    render :show
  end
  
  def edit
   @product = Project.find(params[:id])
   render :edit
 end

 def update
   @project = Project.find(params[:id])
     if@project.update(project_params)
       redirect_to projects_path
     else
       render :edit
     end
 end

 private
    def project_params
      params.require(:project).permit(:title, :description, :technologies_used)
    end
end

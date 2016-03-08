class ClassController < ApplicationController
  def subjects
    render json:ActiveClass.find(params[:id]).subjects
  end

  def lessons
    @class = ActiveClass.find(params[:id])
    @lessons = @class.lessons.paginate(page: params[:page], per_page: 30)
  end

  def show_lessons
    redirect_to "/classes/" + params[:name] + "/lessons"
  end
end

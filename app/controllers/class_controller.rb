class ClassController < ApplicationController
  def subjects
    render json:ActiveClass.find(params[:id]).subjects
  end

  def lessons
    @class = ActiveClass.where(name: params[:name]).take
    @lessons = @class.lessons.paginate(page: params[:page], per_page: 18)
    render :layout => 'lesson_layout'
  end

  def show_lessons
    redirect_to "/classes/" + params[:name] + "/lessons"
  end
end

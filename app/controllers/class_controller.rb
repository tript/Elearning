class ClassController < ApplicationController
  def subjects
    render json: ActiveClass.find(params[:id]).subjects
  end

  def lessons
    if params[:id]
      @class = ActiveClass.find(params[:id])
      @lessons = Lesson.joins(:user).where(users: {school_id: params[:school_id]}, class_id: params[:id], type_id: params[:type_id]).paginate(page: params[:page], per_page: 30)
    else
      @class = ActiveClass.where(name: params[:name]).take
      logger = Logger.new(STDOUT)
      logger.info("I'm here")
      @lessons = @class.lessons.paginate(page: params[:page], per_page: 30)
    end
  end

  def show_lessons
    redirect_to "/classes/" + params[:name] + "/lessons"
  end
end

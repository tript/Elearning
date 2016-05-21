class SubjectController < ApplicationController
  def lessons
    if params[:school_id]
      @lessons = Lesson.joins(:user).where(users: {school_id: params[:school_id]}, class_id: params[:class_id], subject_id: params[:subject_id], type_id: params[:type_id]).paginate(page: params[:page], per_page: 30)
    else
      @lessons = Lesson.where(class_id: params[:class_id], subject_id: params[:subject_id], type_id: params[:type_id]).paginate(page: params[:page], per_page: 30)
    end
  end
end

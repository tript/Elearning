class SubjectController < ApplicationController
  def lessons
    @lessons = Lesson.where(class_id: params[:class_id], subject_id: params[:subject_id]).paginate(page: params[:page], per_page: 30)
  end
end

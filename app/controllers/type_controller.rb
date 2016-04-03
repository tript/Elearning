class TypeController < ApplicationController
  def lessons
    @lessons = Lesson.joins(:user).where(type_id: params[:type_id], users: {school_id: params[:school_id]}).paginate(page: params[:page], per_page: 30)
  end
end

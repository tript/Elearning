class TypeController < ApplicationController
  def lessons
    @school = School.find(params[:school_id])
    @classes = @school.active_classes
    @class_lessons = Array.new
    @type_id = params[:type_id]
    @classes.each do |active_class|
      class_lesson = ClassLesson.new
      class_lesson.class = active_class
      quantity = Lesson.joins(:user).where(users: {school_id: @school.id}, class_id: active_class.id, type_id: @type_id).size
      lessons = Lesson.joins(:user).where(users: {school_id: @school.id}, class_id: active_class.id, type_id: @type_id).limit(10)
      class_lesson.quantity = quantity
      class_lesson.lessons = lessons
      @class_lessons.push(class_lesson)
    end
  end
end

class StaticPagesController < ApplicationController

  def home
    @type = Type.all
    @grades = School.all
    @grade_lessons = Array.new
    @grades.each do |grade|
      grade_lesson = SchoolLesson.new
      grade_lesson.school = grade
      lessons = Array.new
      quantity = 0
      grade.active_classes.each do |active_class|
        quantity += active_class.lessons.count
        lessons += active_class.lessons.limit(5)
      end
      grade_lesson.quantity = quantity
      grade_lesson.lessons = lessons.take(5)
      @grade_lessons.push(grade_lesson)
    end

    if current_user
      @school = current_user.school
      @classes = @school.active_classes
      @class_lessons = Array.new
      @classes.each do |active_class|
        class_lesson = ClassLesson.new
        class_lesson.class = active_class
        quantity = Lesson.joins(:user).where(users: {school_id: @school.id}, class_id: active_class.id).size
        lessons = Lesson.joins(:user).where(users: {school_id: @school.id}, class_id: active_class.id).limit(10)
        class_lesson.quantity = quantity
        class_lesson.lessons = lessons
        @class_lessons.push(class_lesson)
      end
    end
  end

  def help

  end

  def contact
  end

  def about
  end

end
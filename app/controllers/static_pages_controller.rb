class StaticPagesController < ApplicationController

  def home
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
  end

  def help

  end

  def contact
  end

  def about
  end

end
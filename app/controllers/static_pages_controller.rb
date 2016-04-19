class StaticPagesController < ApplicationController

  def home
    @type = Type.all
    @schools = School.all
    @school_lessons = Array.new
    @schools.each do |school|
      school_lesson = SchoolLesson.new
      school_lesson.school = school
      lessons = Array.new
      quantity = 0
      school.active_classes.each do |active_class|
        quantity += active_class.lessons.count
        lessons += active_class.lessons.limit(5)
      end
      school_lesson.quantity = quantity
      school_lesson.lessons = lessons.take(5)
      @school_lessons.push(school_lesson)
    end

    if current_user
      @school = current_user.school
      @classes = @school.active_classes
      @type_lessons = Array.new
      @type = Type.all
      @type.each do |type|
        type_lesson = TypeLesson.new
        type_lesson.type = type
        quantity = Lesson.joins(:user).where(users: {school_id: @school.id}, type_id: type.id).size
        lessons = Lesson.joins(:user).where(users: {school_id: @school.id}, type_id: type.id).limit(10)
        type_lesson.quantity = quantity
        type_lesson.lessons = lessons
        @type_lessons.push(type_lesson)
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
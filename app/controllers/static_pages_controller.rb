class StaticPagesController < ApplicationController

  def home
    @type = Type.all
    @schools = School.all.where(grade_id: 5)
    @school_lessons = Array.new
    @schools.each do |school|
      school_lesson = SchoolLesson.new
      school_lesson.school = school
      quantity = Lesson.joins(:user).where(users: {school_id: school.id}).size
      lessons = Lesson.joins(:user).where(users: {school_id: school.id}).limit(10)
      school_lesson.quantity = quantity
      school_lesson.lessons = lessons.take(5)
      @school_lessons.push(school_lesson)
    end

    if current_user && current_user.school
      @school = current_user.school
      if @school.grade_id == 5 || @school.grade_id == 7
        @phongdaotao = @school
      else
        @phongdaotao = @school.phongdaotao
      end
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
    else
      @classes = ActiveClass.all.order('name ASC')
      @type_lessons = Array.new
      @type = Type.all
      @type.each do |type|
        type_lesson = TypeLesson.new
        type_lesson.type = type
        quantity = Lesson.joins(:user).where(type_id: type.id).size
        lessons = Lesson.joins(:user).where(type_id: type.id).limit(10)
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
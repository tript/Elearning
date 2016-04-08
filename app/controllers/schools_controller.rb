class SchoolsController < ApplicationController
  def index
    #grade = School.all
    #render json: grade
    @school = School.friendly.find(params[:school])
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

  def classes
    grade = School.find(params[:id])
    render json:grade.active_classes
  end

  def subjects
    grade = School.find(params[:id])
    render json:grade.subjects
  end

  def names
    render json:School.where(name: params[:name]).take
  end

  def lessons1
    grade = School.where(name: params[:name]).take
    classes = grade.active_classes
    lessons = Array.new

    classes.each do |cl|
      class_lesson = ClassLesson.new
      class_lesson.class = cl.name
      class_lesson.lessons = cl.lessons.limit(3)
      class_lesson.quantity = cl.lessons.count
      lessons.push(class_lesson)
    end

    render json:lessons
  end

  def lessons
    school = School.find(params[:id])
    @classes = school.active_classes
    @lessons = Array.new

    @classes.each do |cl|
      class_lesson = ClassLesson.new
      class_lesson.class = cl.name
      class_lesson.lessons = cl.lessons.limit(5)
      class_lesson.quantity = cl.lessons.count
      @lessons.push(class_lesson)
    end
  end
end

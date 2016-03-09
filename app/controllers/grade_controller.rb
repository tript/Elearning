class GradeController < ApplicationController
  def index
    grade = Grade.all
    render json: grade
  end

  def classes
    grade = Grade.find(params[:id])
    render json:grade.active_classes
  end

  def subjects
    grade = Grade.find(params[:id])
    render json:grade.subjects
  end

  def names
    render json:Grade.where(name: params[:name]).take
  end

  def lessons1
    grade = Grade.where(name: params[:name]).take
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
    @grade = Grade.find(params[:id])
    @classes = @grade.active_classes
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

class SchoolsController < ApplicationController
  def index
    #grade = School.all
    #render json: grade
    begin
      @school = School.friendly.find(params[:school])
    rescue ActiveRecord::RecordNotFound => e
      render file: 'public/404.html'
    else
      if @school.grade_id == 5
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
    end
  end

  def classes
    grade = School.find(params[:id])
    render json: grade.active_classes
  end

  def subjects
    grade = School.find(params[:id])
    render json: grade.subjects
  end

  def names
    render json: School.where(name: params[:name]).take
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

    render json: lessons
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

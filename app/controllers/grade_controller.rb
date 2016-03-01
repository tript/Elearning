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
    render json:Grade.where(name: params[:name])
  end
end

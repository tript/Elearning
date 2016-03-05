class ClassController < ApplicationController
  def subjects
    render json:ActiveClass.find(params[:id]).subjects
  end

  def lessons
    render json:ActiveClass.where(name: params[:name]).take.lessons
  end
end

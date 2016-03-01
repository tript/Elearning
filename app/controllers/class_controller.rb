class ClassController < ApplicationController
  def subjects
    render json:ActiveClass.find(params[:id]).subjects
  end
end

class StaticPagesController < ApplicationController

  def home
    @grades = Grade.all
  end

  def help
  end

  def contact
  end

  def about
  end
end
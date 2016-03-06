class StaticPagesController < ApplicationController

  def home
    render layout: 'lesson_layout'
  end

  def help
  end

  def contact
  end

  def about
  end
end
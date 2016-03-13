class AdminController < ApplicationController
  def manage_user
    @users = User.all
  end

  def manage_lesson

  end
end

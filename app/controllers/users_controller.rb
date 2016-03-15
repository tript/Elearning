class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @lessons = @user.lessons.paginate(page: params[:page], per_page: 15)

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      log_in @user
      flash[:success] = "Chúc mừng bạn đã đăng ký thành công!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :workplace, :password,
                                 :password_confirmation)
  end

end
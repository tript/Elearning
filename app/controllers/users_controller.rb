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

  def edit_all
    @users = User.all
  end

  def update_all
    params['user'].keys.each do |id|
      @user = User.find(id.to_i)
      if !@user.update_columns(params['user'][id].permit(:user, :name, :email))
        Rails.logger.info(@user.errors.messages.inspect)
        flash[:success] = Rails.logger.info(@user.errors.messages.inspect)
      end

    end
    redirect_to(edit_all_path)
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :workplace, :password,
                                 :password_confirmation)
  end

end
class UsersController < ApplicationController
  def index
    if params[:school_id]
      render json: User.where(school_id: params[:school_id]).pluck("username")
    else
      render json: User.all.pluck("username")
    end
  end

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
      flash[:success] = "Đã thêm người dùng thành công!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def create_by_admin
    @user = User.new(user_params.except(:role))
    @user.roles = Array.[](Role.find(user_params[:role]))
    if @user.save
      # Handle a successful save.
      flash[:success] = "Đã đăng ký thành công!"
      redirect_to edit_all_path
    else
      render 'new'
    end
  end

  def edit_all
    @roles = current_user.roles
    @users = User.all
  end

  def update_all
    params['user'].keys.each do |id|
      @user = User.find(id.to_i)
      if !@user.update_columns(params['user'][id].permit(:user, :name, :email, :school_id))
        flash[:success] = Rails.logger.info(@user.errors.messages.inspect)
      end
    end
    redirect_to(edit_all_path)
  end

  def inbox
    if current_user
      @lessons = current_user.assigned_lessons
    end
  end

  def list_of_downloads
    @user = User.find_by(username: params[:username])
    if @user
      @lessons = @user.download_lessons.paginate(page: params[:page], per_page: 15)
    else
      render application/not_found
    end
  end

  private

  def user_params
    params.require(:user_new).permit(:name, :username, :email, :workplace, :password,
                                 :password_confirmation, :role, :school_id)
  end

end
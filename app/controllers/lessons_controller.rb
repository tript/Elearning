require 'zip'

class LessonsController < ApplicationController
  impressionist :actions => [:show, :details]

  def index
    @lessons = Lesson.all
  end

  def new
    if logged_in?
      @lesson = Lesson.new
      @classes = current_user.school.active_classes.order(:id)
      @types = Type.all
    end
  end

  def get_content
    @lessons = Lesson.all.paginate(page: params[:page], per_page: 30)
  end

  def create
    persons_in_charge_params = eval(lesson_params[:persons_in_charge])
    @lesson = Lesson.new(lesson_params.except(:persons_in_charge))
    @lesson.user = current_user

    if @lesson.save
      if params[:type_id] == 1
        id = @lesson.id
        Zip::File.open(@lesson.url.file.path) do |zipfile|
          zipfile.each do |file|
            f_path=File.join("public/uploads/#{id}/" + file.name)
            FileUtils.mkdir_p(File.dirname(f_path))
            zipfile.extract(file, f_path) unless File.exist?(f_path)
          end
        end
      end

      if @lesson.isAssignment && persons_in_charge_params.any?
        @lesson.persons_in_charge = User.where("username in (?)", persons_in_charge_params)
      end

      #redirect to lesson_path
      redirect_to "/lessons", notice: "The lessons #{@lesson.name} has been uploaded."
    else
      @classes = ActiveClass.all
      render "new"
    end

  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to lessons_path, notice: "\"" + @lesson.name + "\" has been deleted."
  end

  def show
    @lessons = Lesson.find(params[:id])
    id = @lessons.id
    redirect_to("/uploads/#{id}/index.htm")
  end

  def details
    @lesson = Lesson.find(params[:id])
    @school = @lesson.user.school
    if @school.grade_id == 5
      @phongdaotao = @school
    else
      @phongdaotao = @school.phongdaotao
    end

    @comments = Comment.where(lesson_id: params[:id])
    commontator_thread_show(@lesson)
  end

  def search
    search = params[:search]
    if search
      @lessons = Lesson.where('name LIKE ?', "%#{search}%").paginate(page: params[:page], per_page: 30)
    else
      @lessons = Lesson.all.paginate(page: params[:page], per_page: 30)
    end
  end


  def approve
    @lessons = Lesson.where(approved: false).order('created_at DESC').paginate(page: params[:page], per_page: 10)
  end

  def update_approval
    params['lesson'].keys.each do |id|
      @lesson = Lesson.find(id.to_i)
      @lesson.update_columns(approver_id: current_user.id)
      if !@lesson.update_columns(params['lesson'][id].permit(:approved))
        flash[:success] = Rails.logger.info(@lesson.errors.messages.inspect)
      end
    end
    redirect_to(approve_path)
  end

  def download
    lesson = Lesson.find(params[:id])
    download = Download.new(user_id: current_user.id, lesson_id: lesson.id)
    if download.valid?
      download.save
    end
    redirect_to lesson.url.url
  end

  private
  def lesson_params
    params.require(:lessons).permit(:name, :url, :subject_id, :class_id, :represent_image, :type_id, :isAssignment, :persons_in_charge)
  end

end

require 'zip'

class LessonsController < ApplicationController
  impressionist :actions=> [:show,:details]
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
    @classes = ActiveClass.all
    @types = Type.all
  end

  def get_content
    @lessons = Lesson.all.paginate(page: params[:page], per_page: 30)
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user

    if @lesson.save && params[:type_id] == 1
      id = @lesson.id
      Zip::File.open(@lesson.url.file.path) do |zipfile|
        zipfile.each do |file|
          f_path=File.join("public/uploads/#{id}/" + file.name)
          FileUtils.mkdir_p(File.dirname(f_path))
          zipfile.extract(file, f_path) unless File.exist?(f_path)
        end
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
    redirect_to lessons_path, notice:  "\"" + @lesson.name + "\" has been deleted."
  end

  def show
    @lessons = Lesson.find(params[:id])
    id = @lessons.id
    redirect_to("/uploads/#{id}/index.htm")
  end

  def details
    @lesson = Lesson.find(params[:id])
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

  
  private
  def lesson_params
    params.require(:lessons).permit(:name, :url, :subject_id, :class_id, :represent_image, :type_id)
  end

end

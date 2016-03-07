require 'zip'

class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
    @classes = ActiveClass.all
  end

  def get_content
    @lessons = Lesson.find(params[:id])
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user

    if @lesson.save
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

  private
  def lesson_params
    params.require(:lesson).permit(:name, :url, :subject_id, :class_id)
  end

end

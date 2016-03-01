class GradeSubject < ActiveRecord::Base
  self.table_name = "grade_has_subject"
  belongs_to :subject
  belongs_to :grade
end

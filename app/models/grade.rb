class Grade < ActiveRecord::Base
  has_many :active_classes
  has_and_belongs_to_many :subjects, join_table: "grade_has_subject"
end
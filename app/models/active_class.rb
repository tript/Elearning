class ActiveClass < ActiveRecord::Base
  self.table_name = "classes"
  belongs_to :grade
  has_many :lessons
  has_many :subjects, join_table: "class_has_subject"
  accepts_nested_attributes_for :lessons
  has_and_belongs_to_many :subjects, join_table: "class_has_subjects", foreign_key: "class_id"
end

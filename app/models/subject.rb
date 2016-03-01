class Subject < ActiveRecord::Base
  has_and_belongs_to_many :grades, join_table: "grade_has_subject"
end

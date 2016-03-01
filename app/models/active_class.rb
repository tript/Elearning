class ActiveClass < ActiveRecord::Base
  self.table_name = "classes"
  belongs_to :grade
  has_many :lessons
  accepts_nested_attributes_for :lessons
end

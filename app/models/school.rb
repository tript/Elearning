class School < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :grade
  belongs_to :phongdaotao, class_name: "School", foreign_key: "pdt_id"
  has_many :belonged_school, class_name: "School", foreign_key: "pdt_id"
  def active_classes
    return grade.active_classes
  end
end
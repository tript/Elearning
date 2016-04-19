class School < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :grade
  def active_classes
    return grade.active_classes
  end
end
class Lesson < ActiveRecord::Base
  self.table_name = "lessons"
  mount_uploader :url, UrlUploader # Tells rails to use this uploader for this model.
  belongs_to :user
  belongs_to :active_class
  accepts_nested_attributes_for :active_class

  validates :user_id, presence: true
  validates :url, presence: true
  validates :name, presence: true
  validates :class_id, presence: true
  default_scope -> { order(created_at: :desc) }
end

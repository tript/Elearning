class Lesson < ActiveRecord::Base
  is_impressionable
  self.table_name = "lessons"
  mount_uploader :url, UrlUploader # Tells rails to use this uploader for this model.
  mount_uploader :represent_image, RepresentImageUploader
  belongs_to :user
  belongs_to :active_class, foreign_key: "class_id"
  accepts_nested_attributes_for :active_class

  validates :user_id, presence: true
  validates :url, presence: true
  validates :name, presence: true
  validates :class_id, presence: true
  default_scope -> { order(created_at: :desc) }
end

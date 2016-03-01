class Lesson < ActiveRecord::Base
  mount_uploader :url, UrlUploader # Tells rails to use this uploader for this model.
  belongs_to :user
  belongs_to :active_class
  accepts_nested_attributes_for :active_class


  validates :user_id, presence: true
  validates :url, presence: true
  default_scope -> { order(created_at: :desc) }
end

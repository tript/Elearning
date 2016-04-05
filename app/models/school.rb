class School < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_and_belongs_to_many :active_classes, join_table: "school_has_classes", foreign_key: "school_id", association_foreign_key: "class_id"
end
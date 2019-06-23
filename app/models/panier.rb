class Panier < ApplicationRecord
  belongs_to :user
  validates :deadline, presence: true
  validates :titre, presence: true
  mount_uploader :photo, PhotoUploader
  acts_as_taggable_on :tags
end

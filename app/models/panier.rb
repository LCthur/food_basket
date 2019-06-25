class Panier < ApplicationRecord
  belongs_to :user
  validates :deadline, presence: true
  validates :titre, presence: true
  validates :adresse, presence: true
  mount_uploader :photo, PhotoUploader
  acts_as_taggable_on :tags
  geocoded_by :adresse
  after_validation :geocode, if: :will_save_change_to_adresse?
end

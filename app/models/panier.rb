class Panier < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :aliment
  validates :deadline, presence: true
  validates :titre, presence: true
end

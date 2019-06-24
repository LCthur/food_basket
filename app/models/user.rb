class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :nom, presence: true, uniqueness: true
  validates :prenom, presence: true, uniqueness: true
  validates :adresse, presence: true
  geocoded_by :adresse
  after_validation :geocode, if: :will_save_change_to_adresse?
  has_many :paniers, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

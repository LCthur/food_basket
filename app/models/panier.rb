class Panier < ApplicationRecord
  belongs_to :user
  has_many :aliment
end

class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, uniqueness: true, presence: true, allow_blank: false

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

end

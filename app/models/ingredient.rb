class Ingredient < ApplicationRecord
  has_many :doses
  # before_destroy :check_for_dose

  validates :name, uniqueness: true, presence: true, allow_blank: false

  # def check_for_dose
  #   unless dose.nil?
  #     self.errors[:base] << "Cannot delete"
  #     return false
  #   end
  # end
end

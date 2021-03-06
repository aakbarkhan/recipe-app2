class Food < ApplicationRecord
  validates :name, presence: true, length: { minimum: 1, maximum: 50 }
  validates :measurementUnit, presence: true
  validates :price, presence: true

  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods, dependent: :destroy
  has_many :inventory_foods, dependent: :destroy
  has_many :inventory, through: :inventory_foods, dependent: :destroy
end

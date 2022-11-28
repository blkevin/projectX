class Institution < ApplicationRecord
  has_many :educations
  has_many :users, through: :educations
  validates :name, presence: true
  validates :description, presence: true
  has_one_attached :file
  validates :name, uniqueness: true
end

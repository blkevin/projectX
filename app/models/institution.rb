class Institution < ApplicationRecord
  has_many :educations
  has_many :users, through: :educations
  validates :name, presence: true
  validates :description, presence: true
  validates :name, uniqueness: true
end

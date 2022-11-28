class Institution < ApplicationRecord
  has_many :educations
  has_many :users, through: :educations
end

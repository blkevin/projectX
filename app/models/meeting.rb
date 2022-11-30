class Meeting < ApplicationRecord
  belongs_to :student
  belongs_to :mentor
  validates :starting, presence: true
  validates :ending, presence: true
end

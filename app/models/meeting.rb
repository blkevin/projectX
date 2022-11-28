class Meeting < ApplicationRecord
  belongs_to :student
  belongs_to :mentor
  validates :start_date, presence: true
  validates :start_time, presence: true
  validates :end_date, presence: true
  validates :end_time, presence: true
end

class Experience < ApplicationRecord
  belongs_to :user
  validates :position, presence: true
  validates :sector, presence: true
  validates :industry, presence: true
  validates :start_date, presence: true
end

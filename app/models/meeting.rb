class Meeting < ApplicationRecord
  belongs_to :student
  belongs_to :mentor
end

class Conversation < ApplicationRecord
  belongs_to :mentor
  belongs_to :student
  has_many :messages
end

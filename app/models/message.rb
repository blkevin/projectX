class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user, optional: true
  belongs_to :meeting, optional: true
  validates :content, presence: true
end

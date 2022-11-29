class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum status: %i[student mentor]
  has_many :contents
  has_many :experiences
  has_many :educations
  has_many :meetings
  has_many :preferences
  has_many :messages
  has_many :conversations
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :description, presence: true
  validates :status, presence: true

  scope :mentors, -> { where(status: :mentor) }
end
    
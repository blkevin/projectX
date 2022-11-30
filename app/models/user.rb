class User < ApplicationRecord
  include PgSearch::Model #focntion qui permet de pouvoir chercher dans la barre de recherche
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
  has_many :institutions, through: :educations
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :description, presence: true
  validates :status, presence: true

  pg_search_scope :search_mentor,
                  against: %i[first_name last_name description],
                  associated_against: {
                    experiences: [ :sector, :industry ],
                    institutions: [:name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end

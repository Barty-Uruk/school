class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum status: { user: 0, admin: 1 }
  has_and_belongs_to_many :groups
  has_many :statuses
  validates :name, presence: true
  has_many :user_docs
  has_many :alerts
  has_many :states
end

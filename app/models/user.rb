class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum status: { user: 0, admin: 1 }
  has_and_belongs_to_many :courses
  has_many :statuses
  has_many :user_docs
end

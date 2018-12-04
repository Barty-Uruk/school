class Lesson < ApplicationRecord
  belongs_to :course
  has_many :docs
  has_many :states
end

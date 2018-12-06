class Course < ApplicationRecord
  mount_uploader :logo, LogoUploader
  has_many :lessons
  has_and_belongs_to_many :groups
end

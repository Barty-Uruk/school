class UserDoc < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  mount_uploader :file, UserDocUploader
  validates :file, presence: true
end

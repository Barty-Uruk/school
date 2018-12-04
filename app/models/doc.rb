class Doc < ApplicationRecord
  belongs_to :lesson
  mount_uploader :file, DocUploader
end

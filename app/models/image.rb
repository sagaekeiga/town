class Image < ApplicationRecord
  mount_uploader :url, ImageUploader
  paginates_per 20

end

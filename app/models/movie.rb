class Movie < ApplicationRecord
    mount_uploader :url, VideoUploader
    paginates_per 20
end

class Page < ActiveRecord::Base
  belongs_to :category

  mount_uploader :image, PageImageUploader
end

class Service < ActiveRecord::Base
  belongs_to :category, counter_cache: true

  mount_uploader :image, ServiceImageUploader
end

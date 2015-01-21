class Setting < ActiveRecord::Base
  geocoded_by :address, :lookup => :yandex
end

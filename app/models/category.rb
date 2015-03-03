class Category < ActiveRecord::Base
  has_many :services
  belongs_to :section
end

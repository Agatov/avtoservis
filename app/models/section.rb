class Section < ActiveRecord::Base
  has_many :categories

  after_create :create_base_category

  def create_base_category
    self.categories.create(name: name, base: true)
  end
end

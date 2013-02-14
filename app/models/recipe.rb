class Recipe < ActiveRecord::Base
  attr_accessible :name, :course, :cooktime, :servingsize, :instructions, :image, :book_id
  belongs_to :book_id
  has_and_belongs_to_many :ingredients
end
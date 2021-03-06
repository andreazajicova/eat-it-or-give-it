class FoodItem < ApplicationRecord
  belongs_to :user
  
    has_attached_file :food_item_image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  
  validates_attachment_content_type :food_item_image, :content_type => /\Aimage\/.*\Z/
end

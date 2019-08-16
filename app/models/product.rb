class Product < ApplicationRecord
   has_many :reviews, dependent: :destroy
   accepts_nested_attributes_for :reviews

   validates_associated :reviews
   validates :name, presence: true
   validates :description, presence: true
   validates :cost, presence: true
   validates :country_of_origin, presence: true

   before_save(:titleize_product)


private
 def titleize_product
   self.name = self.name.titleize
 end

end

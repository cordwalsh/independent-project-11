class Review < ApplicationRecord
  belongs_to :product
  validates_presence_of :product_id

  validates :author, presence: true
  validates :rating, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true

  validates :content_body, length: { in: 5..250 }
  validates :rating, length: { in: 1..5 }


end

class Product < ApplicationRecord
  has_many :reviews
  validates :name, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
  #Paperclip gem configuration
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

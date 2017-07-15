class Product < ApplicationRecord
  has_many: reviews
  belongs_to :user
  has_many :reviews
end

class Product < ApplicationRecord
  #has_attached_file :image, styles: {medium: "300x300>", thumb: "100x100>"}

  has_many :purchases

  validates_presence_of :name
  # TODO: add validator for pricing format
  validates_presence_of :price
  validates_presence_of :description


end

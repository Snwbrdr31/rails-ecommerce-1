class Product < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  validates_presence_of :name
  # TODO: add validator for pricing format
  validates_presence_of :price
  validates_presence_of :description

  has_many :purchases

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/]

end

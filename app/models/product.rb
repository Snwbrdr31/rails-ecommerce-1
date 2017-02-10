class Product < ApplicationRecord
  has_attached_file :image


  validates_presence_of :name
  # TODO: add validator for pricing format
  validates_presence_of :price
  validates_presence_of :description

  has_many :purchases

  validates_attachment_content_type :image, content_type: /\Aimage/
  validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/]

end

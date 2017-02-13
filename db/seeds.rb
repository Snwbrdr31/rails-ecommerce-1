20.times do
Product.create({name: Faker::Commerce.product_name,
                price: Faker::Commerce.price,
                description: Faker::Lorem.sentence})

end

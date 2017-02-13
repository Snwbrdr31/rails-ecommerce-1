20.times do
Product.create({name: Faker::Commerce.product_name,
                price: Faker::Commerce.price,
                description: Faker::Lorem.sentence})
end

user = User.new
user.email = 'user@test.com'
user.password = 'password'
user.password_confirmation = 'password'
user.first_name = 'Cheese'
user.last_name = 'Ball'
user.save!

admin = User.new
admin.email = 'admin@test.com'
admin.password = 'password'
admin.password_confirmation = 'password'
admin.first_name = 'admin'
admin.last_name = 'account'
admin.admin = true
admin.save!

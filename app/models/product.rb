class Product < ApplicationRecord
set_fixture_class products: Product
fixtures :products

p= Product.new
p.name = "Some book"
puts p.name # "Some book"
self.table_name = "products"
self.primary_id = "product_id"

user = User.create(name: "David", occupation: "Programmer")

users = User.all

david = User.find_by(name: "David")
david.name = "Dave"
david.save

User.find_by(name: "Dave").destroy

end

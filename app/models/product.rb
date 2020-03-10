class Product < ApplicationRecord


p= Product.new
p.name = "Some book"
puts p.name # "Some book"
self.table_name = "products"

#user = User.create(name: "David", occupation: "Programmer")

#users = User.all

#david = User.find_by(name: "David")
#david.name = "Dave"
#david.save

#User.find_by(name: "Dave").destroy

end

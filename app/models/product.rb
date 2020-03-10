class Product < ApplicationRecord
set_fixture_class my_products: Product
fixtures :my_products

p= Product.new
p.name = "Some book"
puts p.name # "Some book"
self.table_name = "my_products"
self.primary_id = "product_id"

end

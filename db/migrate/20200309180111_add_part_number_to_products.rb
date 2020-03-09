class AddPartNumberToProducts < ActiveRecord::Migration[5.2]
  def change
  	


  	add_column :products, :part_number, :string
  	add_index :prodcuts, :part_number
  	create_table :products do |t|
  		t.string :name
  		create_join_table :products, :categories, column_options: {null: true}, table_name: :categorization
  	end
  	change_table :products do |t|
  		t.remove :name, :description
  		t.string :part_number
  		t.index :part_number
  		t.rename :upccode, :upc_code
  	end

  	change_column :products, :part_number, :text

  	add_foreign_key :articles, :authors
  end
end

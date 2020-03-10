class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :name
    	t.text :description
    	t.timestamps
    end
    	reversible do |dir|
    		change_table :products do |t|
    			dir.up { t.change :name, :product_name}
    			dir.down { t.change :name, :p_name}
    		end
    	end

    add_foreign_key :articles, :authors


  end
end

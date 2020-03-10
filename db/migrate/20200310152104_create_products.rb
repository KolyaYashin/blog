class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :name
    	t.text :description
    	t.timestamps
    end
    	reversible do |dir|
    		change_table :products do |t|
    			dir.up {}
    			dir.down {}
    		end
    	end
  end
end

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :name
    	t.text :description
    	t.timestamps

    	reversible do |dir|
    		change_table :products do |t|
    			dir.up { t.change :price, :string}
    			dir.down {t.change :price, :integer}
    		end
    	end
    end
  end
end

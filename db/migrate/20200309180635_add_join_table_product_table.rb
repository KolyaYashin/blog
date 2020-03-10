class AddJoinTableProductTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :tables do |t|
      # t.index [:product_id, :table_id]
      # t.index [:table_id, :product_id]
    end
  end
end

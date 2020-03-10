class CreateDistributors < ActiveRecord::Migration[5.2]
  def change
    create_table :distributors do |t|
      t.string :zipcode
    end

  end
end

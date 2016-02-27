class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :vendor_id
      t.string :_type
      t.float :lat
      t.float :lng
      t.text :wikipedia
      t.string :iata
      t.string :code

      t.timestamps null: false
    end
  end
end

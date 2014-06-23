class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :uuid
      t.integer :type
      t.integer :national
      t.integer :province
      t.integer :city
      t.string :address
      t.integer :postcode

      t.timestamps
    end
  end
end

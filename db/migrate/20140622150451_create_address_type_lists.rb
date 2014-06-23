class CreateAddressTypeLists < ActiveRecord::Migration
  def change
    create_table :address_type_lists do |t|
      t.string :uuid
      t.string :name

      t.timestamps
    end
  end
end

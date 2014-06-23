class CreatePhoneTypeLists < ActiveRecord::Migration
  def change
    create_table :phone_type_lists do |t|
      t.string :uuid
      t.string :name

      t.timestamps
    end
  end
end

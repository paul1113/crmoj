class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :uuid
      t.date :birthday
      t.string :property
      t.string :mobile
      t.boolean :sender
      t.string :mail
      t.string :department
      t.string :position
      t.string :area
      t.string :subjection
      t.string :tel
      t.string :fax
      t.string :im
      t.string :id_card
      t.string :address
      t.integer :postcode

      t.timestamps
    end
  end
end

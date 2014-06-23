class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :uuid
      t.integer :type
      t.integer :national
      t.integer :city
      t.string :number
      t.string :extension

      t.timestamps
    end
  end
end

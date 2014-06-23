class CreateMobiles < ActiveRecord::Migration
  def change
    create_table :mobiles do |t|
      t.string :uuid
      t.integer :type
      t.integer :national
      t.string :number

      t.timestamps
    end
  end
end

class CreateIms < ActiveRecord::Migration
  def change
    create_table :ims do |t|
      t.string :uuid
      t.integer :type
      t.string :number

      t.timestamps
    end
  end
end

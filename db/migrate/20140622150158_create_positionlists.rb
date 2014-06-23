class CreatePositionlists < ActiveRecord::Migration
  def change
    create_table :positionlists do |t|
      t.string :uuid
      t.string :name

      t.timestamps
    end
  end
end

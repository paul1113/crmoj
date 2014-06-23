class CreateSubjectionlists < ActiveRecord::Migration
  def change
    create_table :subjectionlists do |t|
      t.string :uuid
      t.string :name

      t.timestamps
    end
  end
end

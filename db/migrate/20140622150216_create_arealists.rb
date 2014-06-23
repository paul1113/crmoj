class CreateArealists < ActiveRecord::Migration
  def change
    create_table :arealists do |t|
      t.string :uuid
      t.string :name

      t.timestamps
    end
  end
end

class CreateEmailTypeLists < ActiveRecord::Migration
  def change
    create_table :email_type_lists do |t|
      t.string :uuid
      t.string :name

      t.timestamps
    end
  end
end

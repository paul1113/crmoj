class CreateDepartmentlists < ActiveRecord::Migration
  def change
    create_table :departmentlists do |t|
      t.string :uuid
      t.string :name

      t.timestamps
    end
  end
end

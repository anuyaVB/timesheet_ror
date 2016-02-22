class CreateMtimesheets < ActiveRecord::Migration
  def change
    create_table :mtimesheets do |t|
      t.string :project
      t.string :description
      t.integer :hours
      t.string :status

      t.timestamps null: false
    end
  end
end

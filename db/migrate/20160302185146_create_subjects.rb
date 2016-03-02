class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :nombre
      t.integer :codigo

      t.timestamps null: false
    end
  end
end

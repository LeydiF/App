class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :nombre
      t.integer :codigo

      t.timestamps null: false
    end
  end
end

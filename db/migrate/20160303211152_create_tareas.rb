class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :enunciado
      t.datetime :fecha

      t.timestamps null: false
    end
  end
end

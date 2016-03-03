class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :apellido
      t.integer :identificacion
      t.string :asignaturas
      t.string :email

      t.timestamps null: false
    end
  end
end

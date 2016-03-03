class CreateEstudiantesSubjects < ActiveRecord::Migration
  def change
    create_table :estudiantes_subjects, id: false do |t|
    	t.integer :estudiante_id
    	t.integer :subject_id
    end
  end
end

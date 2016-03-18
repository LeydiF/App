class AddEstudianteIdToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :estudiante_id, :integer
  end
end

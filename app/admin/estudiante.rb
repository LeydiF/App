ActiveAdmin.register Estudiante do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :nombre, :apellido, :asignaturas, :identificacion, :email

 #...................Con esto controlo los filters..................

 filter :nombre
 # filter :apellido
 # filter :asignaturas
 filter :identificacion
 # filter :email


 #.....................Es como se muestra la lista de los estudiantes que ya existe, y con esto controlo que se mustra...........

 index do |estudiante|
 	selectable_column
 	column :nombre
 	column :identificacion
 	actions
 end

 #....................Es para la vista de new y edit...............

 form do |f|
 	f.inputs 'Informacion basica' do
 		f.inputs
 	end
 	f.actions
 end

 #.................Esto me controla lo que se del estudiante........................

 # show do
 # 	attributes_table do
 # 		row :nombre
 # 		row :apellido
 # 	end
 # end

 #........................................................

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end

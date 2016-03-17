class EstudiantesController < ApplicationController
	
	def index
		@estudiante = Estudiante.all
	end

	def new
		@estudiante = Estudiante.new

	end

	def edit
		@estudiante = Estudiante.find(params[:id])

	end

	def create
		@estudiante = Estudiante.new(estudiante_params)
		@estudiante.save
		redirect_to estudiantes_path

	end

	def estudiante_params
		params.require(:estudiante).permit(:nombre, :apellido, :identificacion, :email, {subject_ids: []})
	end

	def destroy
		@estudiante = Estudiante.find(params[:id])
		@estudiante.destroy
		redirect_to estudiantes_path
	end

	def update
		@estudiante = Estudiante.find(params[:id])
		@estudiante.update(estudiante_params)
		redirect_to estudiantes_path
	end

end

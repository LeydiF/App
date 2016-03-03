class TareasController < ApplicationController
	def index
		@tarea = Tarea.all
	end

	def new
		@tarea = Tarea.new

	end

	def edit
		@tarea = Tarea.find(params[:id])

	end

	def create
		@tarea = Tarea.new(tarea_params)
		@tarea.save
		redirect_to tareas_path
	end

	def tarea_params
		params.require(:tarea).permit(:enunciado, :fecha)
	end

	def destroy
		@tarea = Tarea.find(params[:id])
		@tarea.destroy
		redirect_to tareas_path
	end

	def update
		@tarea = Tarea.find(params[:id])
		@tarea.update(tarea_params)
		redirect_to tareas_path
	end
end

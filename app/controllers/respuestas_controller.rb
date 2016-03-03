class RespuestasController < ApplicationController

	def index

		@respuesta = Respuesta.all
		
	end

	def new

		@respuesta = Respuesta.new

	end

	def edit

		@respuesta = Respuesta.find(params[:id])

	end

	def create
		@respuesta = Respuesta.new(respuesta_params)
		@respuesta.save
		redirect_to respuestas_path
	end

	def respuesta_params
		params.require(:respuesta).permit(:enunciado, :calificacion)
	end

	def destroy
		@respuesta = Respuesta.find(params[:id])
		@respuesta.destroy
		redirect_to respuestas_path
	end

	def update
		@respuesta = Respuesta.find(params[:id])
		@respuesta.update(respuesta_params)
		redirect_to respuestas_path
	end

end

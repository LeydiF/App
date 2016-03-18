class HomeController < ApplicationController

	# Este codigo no deja que vean el index de la app sino esta registrado
	# skip_before_action :authenticate_user!, only: [:index]

	def index
		#flash[:notice] = 
	end

	

end

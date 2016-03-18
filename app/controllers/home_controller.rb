class HomeController < ApplicationController

	# Este codigo no deja que vean el index de la app sino esta registrado
	# before_action :authenticate_user!, only: [:index]

	def index
		#flash[:notice] = 
	end

	

end

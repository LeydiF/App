class SubjectsController < ApplicationController

def index
		@subjects = Subject.all
	end

	def new
		@subject = Subject.new
	end


	def subject_params
		params.require(:subject).permit(:id, :message)
	end

end

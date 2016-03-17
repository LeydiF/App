class Estudiante < ActiveRecord::Base
	has_many :subjects
	belongs_to :user
end

class Subject < ActiveRecord::Base
	has_many :estudiantes
	belongs_to :user
end

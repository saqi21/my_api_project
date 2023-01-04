class AttendancesController < ApplicationController
	def index
		
	end
	def create
		@obj_c =  GktecoClient.new.fetch('devsloop')
		@obj_p = ProcessAttendance.new(@obj_c)
		@attendance_response = @obj_p.get_attendances
		@attendance_response .each do |att_r|
			
		end
	end
end
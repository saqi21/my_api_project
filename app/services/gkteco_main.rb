require "json"
class GktecoMain
	# @@sync_data = []
	# class << self
	# 	def main
	# 			x = -1
	# 			while(x != 0) 
	# 				puts "\tTo exit press 0"
	# 				puts "\tSync data press 1"
	# 				puts "\tFor getting admins press 2"
	# 				puts "\tFro getting employees press 3"
	# 				puts "\tFor all attendance logs press 4"
	# 				# puts "\tPleses press a number from 0 to 9"
	# 				# puts "\tPleses press a number from 0 to 9"
	# 				x = gets.chomp.to_i																																																																																																																																																																																																																																																																																				
	# 				case x
	# 				when 1
	# 					sync_data
	# 				when 2
						
	# 					puts @@sync_data.get_admins
	# 					puts "executes admin method"
	# 				when 3
	# 					@@sync_data.get_employees
	# 					puts "executes emp method"
	# 				when 4
	# 					@@sync_data.get_attendences
	# 				end
	# 			end		
	# 	end
		
	# 	def sync_data
	# 		response_data = GktecoClient.new.fetch('devsloop') 
	# 		@@sync_data = ProcessAttendance.new(response_data)
	# 		puts "data Sync Successfully"
	# 	end
	# end



	response_data = GktecoClient.new.fetch('devsloop')
	 obj = ProcessAttendance.new(response_data)
	 
	 
end
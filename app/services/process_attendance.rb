require "json"
class ProcessAttendance

	def initialize(response)
		data_response = JSON.parse(response).to_hash
		 @users_data = data_response['users']
		 @attendance_logs = data_response['attendances']

	 end

	 def get_employees
	 	@users_data
	 end
	 def get_attendances
	 	
	 	@attendance_logs
	 end

	# def get_admins
	# 	#User.admins
	# 	@@users_data.each do |u|
	# 		if u['privilege']==14
	# 			puts u['name']
	# 		end
	# 		end
	# end

	# def punctuality_points(from=Time.now - 30.days, to=Time.now)
	# 	points_table = {}
	# 	self.users.each do |user|
	# 		attendance_during(from, to).each do |at|

	# 			if at['user_id'].to_i == user['user_id'].to_i
	# 				if at["punch"]==0
	# 					if points_table[user['name']]!=nil
	# 						points_table[user['name']] += 1
	# 					else
	# 						points_table[user['name']] = 1
	# 					end
	# 				end
	# 			end
	# 		end
	# 	end
	# 	points_table
	# end
end
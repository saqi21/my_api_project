class Attendance
	@@attendance=[]

	class << self
		def sync(att_data)
			byebug
				@@attendance = att_data		
		end

		# def self.user_attendence(user_id:)
		# 	attendences = @@attendence.select{|a| a['user_id'] == user_id }	
		# end

		# def load(from = (Time.now - 15.days) , to = Time.now)
		# 	current_attendance = []
		# 		@@attendence.select do |att|
		# 			selected_time = Time.parse(at['timestamp'])
		# 			att if selected_time >= from and selected_time < to
		# 		end
		# end
	end
end
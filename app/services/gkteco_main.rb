require "json"
class GktecoMain
	def users
		data['users']
	end

	def attendance
		data['attendances']
	end

	def generate_employees
		users.each do |user|
			Employee.find_or_create_by(user_id: user["user_id"], name: user["name"])
		end
	end

	def generate_attendances
		attendance.each do |at|
			 c = Attendance.find_or_create_by(user_id: at["user_id"], timestamp: at["timestamp"], status: at["status"], punch: at["punch"])
			 c.save
		end
	end

	private

	def client
		GktecoClient.new
	end

	def data
		@data ||= JSON.parse(client.fetch('devsloop')).to_hash
	end
end

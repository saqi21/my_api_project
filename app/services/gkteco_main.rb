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
		attendance.each do |attendance|
			 c = Attendance.find_or_create_by(user_id: attendance["user_id"], timestamp: attendance["timestamp"], status: attendance["status"], punch: attendance["punch"])
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

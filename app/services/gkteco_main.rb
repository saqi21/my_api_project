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
			CheckingAttendance.new(at).call
		end
	end

	private
	def data
		@data ||= JSON.parse(GktecoClient.new.fetch('devsloop')).to_hash
	end

end

require "json"
class ProcessAttendance
	attr_reader :users, :attendance_logs

	def initialize(response)
    data_response = JSON.parse(response).to_hash
    @users = data_response['users']
    @attendance_logs = data_response['attendances']
	end

	def get_admins
    $employee.each do |emp|
      if $employee["privilege"]==14
          puts "okookokokokok	"
      end
    end
	end
end
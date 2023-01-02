require "json"
class ProcessAttendance
	attr_reader :users, :attendance_logs

	def initialize(response)
    data_response = JSON.parse(response).to_hash
    @users = data_response['users']
    @attendance_logs = data_response['attendances']
	end

	def get_admins
    admins = []
    self.users.each do |u|
      admins.append(u) if u['privilege'] == 14
    end
    admins
	end

  def get_employees
    employees = []
    self.users.each do |u|
      employees.append(u) if u['privilege'] == 14
    end
    employees
	end

  

end
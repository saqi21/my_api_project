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
      employees.append(u) if u['privilege'] == 0
    end
    employees
	end

  def attendance_for(id)
    
  end

  def attendance_during(from, to)
    current_attendance = []
    self.attendance_logs.each do |at|
      selected_time = DateTime.parse(at['timestamp'])
      puts selected_time >= DateTime.now - 10.days
      if selected_time >= from and selected_time <= to
        current_attendance.append(at) 
      end
    end
    current_attendance
  end

  # def get punctuality_points(from, to)
  #   points_table = {}
  #   self.users.each do |user|
  #     self.attendance_logs.each
  #   end
  # end

end
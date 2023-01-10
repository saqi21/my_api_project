class CheckingAttendance
	def initialize(attendance)
		@attendance = attendance
	end

	def call
		if attendances.blank?
			attendance = create
			if attendance['punch']==0
        if attendance['timestamp'].to_datetime.hour <= 11 && attendance['timestamp'].to_datetime.min <=15
          point = attendance.point
          point = 1
          attendance.update(point: point)
        elsif attendance['timestamp'].to_datetime.hour >=11 && attendance['timestamp'].to_datetime.min >15
          point = attendance.point
          point = -1
          attendance.update(point: point)
        end 
      end
    else
      attendance = create
    end
  end

  private

  def attendances
    today = Date.today
    @attendances ||= Attendance.where(user_id: @attendance['user_id'], 
                                      timestamp: today.beginning_of_day..today.end_of_day)
  end

  def create
      Attendance.find_or_create_by( user_id: @attendance["user_id"], 
                                    timestamp: @attendance["timestamp"], 
                                    status: @attendance["status"], 
                                    punch: @attendance["punch"])
  end
end

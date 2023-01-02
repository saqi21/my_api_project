require "json"
class GktecoMain
	response_data = GktecoClient.new.fetch_data('devsloop')
	 obj = ProcessAttendance.new(response_data)
	 puts "hiiiiiii"
	 puts obj.get_admin
end
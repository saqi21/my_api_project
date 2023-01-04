class User
	
	@@admins = []
	@@employees = []
	# @@attendence = []
	@@users = []

	class << self
		
		def sync(data)
			@@users = data		
		end

		def find_by(key,value, users)

		end

		def import_all
			users.map{|user| self.new(user)}
		end

		def admins
			@@admins ||= users.select{ |u| 
				if u['privilege'] == 14 
				end
			}
			# @@users.each do |u|
			# 	if u["privilege"]==14
			# 		puts u['name']
			# 	end
			# end
		end

		def employees
			@@employees ||= users.select{ |u| 
				if u['privilege'] != 14
				end
			}
		end

		def all
			amins + employees
		end

		def attendence(id:)
			Attendence.find_by(user_id: :user_id, id: id)
		end
	end
end
 if points_table[user['name']].nil?
            points_table[user['name']] = 1
          else
            points_table[user['name']] += 1
          end 
working points




def punctuality_points(from, to)
		points_table = {}
		self.users.each do |user|
			attendance_during(from, to).each do |at|

				if at['user_id'].to_i == user['user_id'].to_i
					if at["punch"]==0
						if points_table[user['name']]!=nil
							points_table[user['name']] += 1
						end
					end
					if at["punch"]>=1
						if points_table[user["name"]].nil?
							points_table[user['name']] = 1
						end
					end
				end
			end
		end
		points_table
	end
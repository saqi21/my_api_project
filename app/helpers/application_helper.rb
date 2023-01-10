module ApplicationHelper
	def cal_point(points)
		points.sum(:point)
	end
end

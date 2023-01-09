class AttendancesController < ApplicationController
  before_action :load_emp, only: [:index]
 
  def index
    @q = Attendance.where(user_id: params[:employee_id]).ransack(params[:q])
    @attendances = @q.result(distinct: true).order(timestamp: :desc)
  end

  private
  def load_emp
    @employee = Employee.find_by(user_id: params[:employee_id])
  end
end
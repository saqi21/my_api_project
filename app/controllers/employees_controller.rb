class EmployeesController < ApplicationController
  before_action :create
  def index
    @employees  = Employee.all
  end
  def create
    @obj_c =  GktecoClient.new.fetch('devsloop')
    @obj_p = ProcessAttendance.new(@obj_c)
    @response_data = @obj_p.get_employees
    @response_data.each do |r_data|
      Employee.find_or_create_by(user_id: r_data["user_id"], name: r_data["name"])
    end

  end

  def show
  end

  def edit
  end
  private
  def set_employee
    @employee=Employee.find(params[:id])
  end
end

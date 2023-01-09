class EmployeesController < ApplicationController
 
  def index
    @employees  = Employee.all
  end

  def show

  end

  def edit
  end

  def sync_attendance
    GktecoMain.new.generate_attendances
    redirect_to employees_path
  end

  private
  def set_employee
    @employee=Employee.find(params[:id])
  end

end

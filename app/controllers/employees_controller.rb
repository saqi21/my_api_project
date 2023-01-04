class EmployeesController < ApplicationController
 
  def index
    @employees  = Employee.all
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

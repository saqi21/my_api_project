class EmployeesController < ApplicationController
  before_action :set_employee ,only: [:show,:edit]
  def index
    @employees=Employee.all
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

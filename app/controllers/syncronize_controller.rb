class SyncronizeController < ApplicationController

  def sync_employees
    GktecoMain.new.generate_employees
    flash[:notice] = "Successfully synced"
    redirect_to employees_path
  end

  def sync_attendance
    GktecoMain.new.generate_attendances
    flash[:notice] = "Successfully synced"
    redirect_to employees_path
  end

end

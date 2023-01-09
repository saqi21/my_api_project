class SyncronizeController < ApplicationController

  def sync_employees
    GktecoMain.new.generate_employees
    redirect_to employees_path
  end

  def sync_attendance
    GktecoMain.new.generate_attendances
    redirect_to employees_path
  end

end

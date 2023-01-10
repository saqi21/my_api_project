class SyncronizeController < ApplicationController

  def sync_employees
    begin
      GktecoMain.new.generate_employees
      flash[:notice] = " Employees Are Synced Successfully"
    rescue Errno::ECONNREFUSED => e
      flash[:notice] = "Connection refused to localhost:8000."  
    rescue NoMethodError => e
      flash[:notice] = "Unable to Connect to the machine"
    end
   redirect_to employees_path
  end

  def sync_attendance
    begin
      GktecoMain.new.generate_attendances
      flash[:notice] = "Successfully Synced Attendances"
    rescue Errno::ECONNREFUSED => e
      flash[:notice] = "Connection refused to localhost:8000."
    rescue NoMethodError => e
      flash[:notice] = "Unable to Connect to the machine"
    end
    redirect_to employees_path
  end
end

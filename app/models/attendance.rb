class Attendance < ApplicationRecord
  paginates_per 10
  #enum punch: [:checkIn, :Checkout]
end

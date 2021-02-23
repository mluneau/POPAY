class Appointment < ApplicationRecord
  belongs_to :employee, class_name: "User"
  belongs_to :hr, class_name: "User"
  
end

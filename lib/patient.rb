class Patient
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def new_appointment(date, doctor)
    appointment = Appointment.new()
  end
end
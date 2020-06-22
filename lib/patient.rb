class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)
  end
  
  def self.all
    @@all
  end
  
  def appointments
    self.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def doctors
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
  
end
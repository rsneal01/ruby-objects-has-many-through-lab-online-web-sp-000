class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def self.all
    @@all
  end
  
  def appointments
    all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def doctors
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
  
end
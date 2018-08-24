class Patient

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.each do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.collect do |appointment|
      appointment.doctor
    end
  end

  def self.all
    @@all
  end

end

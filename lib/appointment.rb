class Appointment
  attr_reader :date, :patient, :doctor
  @@all = []
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  # def new_appointment(date, doctor)
  #   Appointment.new(date,)
  # end

  def self.all
    @@all
  end
end

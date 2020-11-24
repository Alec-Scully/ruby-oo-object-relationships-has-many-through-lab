class Patient
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        
        self.class.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        new_appointment = Appointment.new(date, self, doctor)
    end

    def appointments
        pat_appo = Appointment.all.select do | appointments |
            appointments.patient == self
        end
    end

    def doctors
        pat_doctors = self.appointments.map do | appointments |
            appointments.doctor
        end
    end
end 

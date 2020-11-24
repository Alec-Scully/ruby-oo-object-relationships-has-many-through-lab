class Doctor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        self.class.all << self
    end

    def self.all
        @@all
    end

    def appointments
        doc_appointments = Appointment.all.select do | appointments |
            appointments.doctor == self
        end
    end

    def new_appointment(date, patient)
        new_appointment = Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.map do | appointments |
            appointments.patient
        end
    end
end

class AppointmentsController < ApplicationController
  def index
    @future_appointments = Appointment.future(Date.today)
    @past_appointments = Appointment.past(Date.today)
  end
end

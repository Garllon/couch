class AppointmentsController < ApplicationController
  def index
    @future_appointments = Appointment.future(Date.today)
    @past_appointments = Appointment.past(Date.today)
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    Appointment.create(appointment_parameters)

    redirect_to appointments_path
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    appointment = Appointment.find(params[:id])
    appointment.update_attributes(appointment_parameters)
    
    redirect_to appointments_path
  end

  private

  def appointment_parameters
    params.require(:appointment)
      .permit(:street, :postal_code, :city, :country_code)
  end
end

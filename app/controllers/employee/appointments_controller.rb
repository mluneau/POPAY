class Employee::AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show]
  
  def index
    @appointments = policy_scope(Appointment)
  end

  def show
  end

  def new
    @appointment = Appointment.new
    authorize @appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.employee = current_user
    @appointment.meeting_date = Date.tomorrow
    authorize @appointment
    if @appointment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
    authorize @appointment
  end

  def appointment_params
    params.require(:appointment)
          .permit(:hr_id)
  end
end

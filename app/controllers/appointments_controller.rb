class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show]
  
  def index
    @appointments = policy_scope(appointment)
  end

  def show
  end

  def new
    @appointment = Appointment.new
    authorize @appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)
    authorize @appointment
    @appointment.user = current_user
    if @discussion.save
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
          .permit([:meeting_date])
  end
end

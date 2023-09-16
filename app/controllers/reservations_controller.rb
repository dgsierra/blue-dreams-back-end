class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reservation, only: %i[show update destroy]

  # GET /reservations
  def index
    @reservations = if current_user.admin == true
                      Reservation.all
                    else
                      current_user.reservations
                    end
    render json: @reservations
  end

  # GET /reservations/1
  def show
    render json: @reservation
  end

  # POST /reservations
  # TODO Get the total from the input dates
  # TODO The dates cant be in the past
  # TODO Get the rate from the ship
  # TODO Get the deposit from the ship that should be 5% the value of the ship
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reservations/1
  def update
    if current_user.admin == true || current_user == @reservation.user
      if @reservation.update(reservation_params)
        render json: @reservation, status: :ok
      else
        render json: @reservation.errors, status: :unprocessable_entity
      end
    else
      render json: { error: 'You are not authorized to update this reservation' }, status: :unauthorized
    end
  end

  # DELETE /reservations/1
  def destroy
    if current_user.admin == true || current_user == @reservation.user
      @reservation.destroy
      render json: { message: 'Reservation deleted' }
    else
      render json: { error: 'You are not authorized to delete this reservation' }, status: :unauthorized
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:date_start, :date_end, :total, :duration, :deposit, :insurance, :ship_id)
  end
end

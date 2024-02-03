class BookingsController < ApplicationController


  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
    @user = User.find(@booking.user_id)
    @game = Game.find(@booking.game_id)
  end

  def new
    @booking = Booking.new
    authorize @booking
    @user_id = current_user.id
    @game_id = Game.find(params[:id]).id
    @booking.user_id = @user_id
    @booking.game_id = @game_id
  end

  def create
    params[:booking][:user_id].to_i
    params[:booking][:game_id].to_i
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.save
    redirect_to root_path
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :game_id, :startDate, :endDate, :total_price)
  end
end

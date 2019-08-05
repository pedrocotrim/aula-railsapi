class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :update, :destroy]

  # GET /rentals
  def index
    @rentals = Rental.all

    render json: @rentals
  end

  # GET /rentals/1
  def show
    render json: @rental
  end

  # POST /rentals
  def create
    car = Car.find(params["rental"]["car_id"])
    if car.available?
      @rental = Rental.new(rental_creation_params)

      if @rental.save
        render json: @rental, status: :created, location: @rental
        car.decrement
      else
        render json: @rental.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /rentals/1
  def update
    @rental.ending = params["end"]
    if @rental.save
      @rental.car.more
      @rental.calculate_final_price
      @rental.save
      render json: @rental
    end
  end

  # DELETE /rentals/1
  def destroy
    @rental.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental
      @rental = Rental.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rental_creation_params
      params.require(:rental).permit(:beginning, :car_id)
    end
end

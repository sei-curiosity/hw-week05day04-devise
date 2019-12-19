class CarsController < ApplicationController
  before_action :set_user_cars,  only: [:new, :create, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :set_user_cars]
  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @car = Car.find(params[:id])
  end

  # GET /cars/new
  def new
    @car = @cars.new
  end

  # GET /cars/1/edit
  def edit
    @car = @cars.find(params[:id])
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = @cars.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    @car = @cars.find(params[:id])
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car = @cars.find(params[:id])
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_cars
      @cars = current_user.cars
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:name, :model, :year)
    end
end

class UserVehiclesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_user_vehicle, only: [:show, :edit, :update, :destroy]
  before_action :current_user_scope
  # GET /user_vehicles
  # GET /user_vehicles.json
  def index
		if current_user.user_vehicles.count != 0
    @user_vehicles = UserVehicle.where(:user_id => current_user.id)
		else
			redirect_to new_user_vehicle_path, notice: "You don't have any vehicles to view, add one below"
		end
  end

  # GET /user_vehicles/1
  # GET /user_vehicles/1.json
  def show
  end

  # GET /user_vehicles/new
  def new
    @user_vehicle = UserVehicle.new
  end

  # GET /user_vehicles/1/edit
  def edit
  end

  # POST /user_vehicles
  # POST /user_vehicles.json
  def create
    @user_vehicle = UserVehicle.new(user_vehicle_params)
		@user_vehicle.user = current_user
    respond_to do |format|
      if @user_vehicle.save
        format.html { redirect_to @user_vehicle, notice: 'User vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @user_vehicle }
      else
        format.html { render :new }
        format.json { render json: @user_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_vehicles/1
  # PATCH/PUT /user_vehicles/1.json
  def update
    respond_to do |format|
      if @user_vehicle.update(user_vehicle_params)
        format.html { redirect_to @user_vehicle, notice: 'User vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @user_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_vehicles/1
  # DELETE /user_vehicles/1.json
  def destroy
    @user_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to user_vehicles_url, notice: 'User vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def current_user_scope
      current_user
    end
    
    def set_user_vehicle
      @user_vehicle = UserVehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_vehicle_params
      params.require(:user_vehicle).permit(:user_id, :vehicleType, :vehicleColor, :maxRider)
    end
end

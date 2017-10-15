class RideRequestsController < ApplicationController
	before_filter :authenticate_user!
    before_action :current_user_scope
	before_action :set_ride_request, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    if params[:q]
    @ride_request = RideRequest.find_all_by_query(params[:q])
    else
    @ride_request = RideRequest.all
    end
  end

  def show
    respond_with(@ride_request)
  end

  def new
    @ride_request = RideRequest.new
    respond_with(@ride_request)
  end

  def edit
  end

  def create
    @ride_request = RideRequest.new(ride_request_params)
		@ride_request.user_id = current_user
    @ride_request.save
    respond_with(@ride_request)
  end

  def update
    @ride_requests.update(ride_request_params)
    respond_with(@ride_request)
  end

  def destroy
    @ride_requests.destroy
    respond_with(@ride_request)
  end

  private
    def set_ride_request
      @ride_request = RideRequest.find(params[:id])
    end

    def ride_request_params
      params.require(:ride_request).permit(:user_id, :event_id, :confirmed)
    end
  
    def current_user_scope
      current_user
    end
end

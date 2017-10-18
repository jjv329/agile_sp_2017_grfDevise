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
    @ride_request = RideRequest.new(:user_id => params[:user_id], :event_list_id => params[:event_list_id], :confirmed => params[:confirmed])
    @ride_request.save
    redirect_to :back
  end

  def update
    RideRequest.find(params[:id]).update(:confirmed => params[:confirmed])
    redirect_to :back
  end

  def destroy
    @ride_request.destroy
    respond_with(@ride_request)
  end

  private
    def set_ride_request
      @ride_request = RideRequest.find(params[:id])
    end

    def ride_request_params
      params.require(:ride_request).permit(:user_id, :event_list_id, :confirmed)
    end
  
    def current_user_scope
      current_user
    end
end

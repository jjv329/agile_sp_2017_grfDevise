class EventListsController < ApplicationController
	before_filter :authenticate_user!
    before_action :current_user_scope
	before_action :set_event_list, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def rides
    if params[:q]
    @event_lists = EventList.where(eventDriver: false).find_all_by_query(params[:q])
    else
    @event_lists = EventList.where(eventDriver: false).all
    end
  end
	
	def drives
		if params[:q]
    	@event_lists = EventList.where(eventDriver: true).find_all_by_query(params[:q])
    else
    	@event_lists = EventList.where(eventDriver: true).all
    end
	end

  def show
    respond_with(@event_list)
  end

  def new
    @event_list = EventList.new
    respond_with(@event_list)
  end

  def edit
  end

  def create
    @event_list = EventList.new(event_list_params)
		@event_list.user = current_user
    @event_list.save
    respond_with(@event_list)
  end

  def update
    @event_list.update(event_list_params)
    respond_with(@event_list)
  end

  def destroy
    @event_list.destroy
    respond_with(@event_list)
  end

  private
    def set_event_list
      @event_list = EventList.find(params[:id])
    end

    def event_list_params
      params.require(:event_list).permit(:eventDate, :eventTime, :eventName, :eventDescription, :streetAddress, :City, :State, :Zip, :nbrOfRiders, :vehicle_id, :PUstreetAddress, :PUCity, :PUState, :PUZip, :smokingAllowed, :eventDriver, :user_id)
    end
  
    def current_user_scope
      current_user
    end
end

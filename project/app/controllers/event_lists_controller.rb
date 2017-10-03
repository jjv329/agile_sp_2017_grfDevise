class EventListsController < ApplicationController
  before_action :set_event_list, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if params[:q]
    @event_lists = EventList.find_all_by_query(params[:q])
    else
    @event_lists = EventList.all
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
      params.require(:event_list).permit(:eventDate, :eventTime, :eventName, :eventDescription, :streetAddress, :City, :State, :Zip, :nbrOfRiders, :vehicleType, :PUstreetAddress, :PUCity, :PUState, :PUZip, :smokingAllowed, :createdBy, :eventDriver)
    end
end

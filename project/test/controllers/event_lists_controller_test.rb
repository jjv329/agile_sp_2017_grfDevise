require 'test_helper'

class EventListsControllerTest < ActionController::TestCase
  setup do
    @event_list = event_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_list" do
    assert_difference('EventList.count') do
      post :create, event_list: { City: @event_list.City, PUCity: @event_list.PUCity, PUState: @event_list.PUState, PUZip: @event_list.PUZip, PUstreetAddress: @event_list.PUstreetAddress, State: @event_list.State, Zip: @event_list.Zip, createdBy: @event_list.createdBy, eventDate: @event_list.eventDate, eventDescription: @event_list.eventDescription, eventDriver: @event_list.eventDriver, eventName: @event_list.eventName, eventTime: @event_list.eventTime, nbrOfRiders: @event_list.nbrOfRiders, smokingAllowed: @event_list.smokingAllowed, streetAddress: @event_list.streetAddress, vehicleType: @event_list.vehicleType }
    end

    assert_redirected_to event_list_path(assigns(:event_list))
  end

  test "should show event_list" do
    get :show, id: @event_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_list
    assert_response :success
  end

  test "should update event_list" do
    patch :update, id: @event_list, event_list: { City: @event_list.City, PUCity: @event_list.PUCity, PUState: @event_list.PUState, PUZip: @event_list.PUZip, PUstreetAddress: @event_list.PUstreetAddress, State: @event_list.State, Zip: @event_list.Zip, createdBy: @event_list.createdBy, eventDate: @event_list.eventDate, eventDescription: @event_list.eventDescription, eventDriver: @event_list.eventDriver, eventName: @event_list.eventName, eventTime: @event_list.eventTime, nbrOfRiders: @event_list.nbrOfRiders, smokingAllowed: @event_list.smokingAllowed, streetAddress: @event_list.streetAddress, vehicleType: @event_list.vehicleType }
    assert_redirected_to event_list_path(assigns(:event_list))
  end

  test "should destroy event_list" do
    assert_difference('EventList.count', -1) do
      delete :destroy, id: @event_list
    end

    assert_redirected_to event_lists_path
  end
end

require 'test_helper'

class RideRequestsControllerTest < ActionController::TestCase

  setup do
    @ride_request = ride_requests(:one)
    sign_in users(:user_one)
    sign_in users(:user_two)
  end
  
  test "Should be able to pull the index page of this Controller" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ride_request)
  end

  test "Should be able to pull the new page of this Controller" do
    get :new
    assert_response :success
  end

  test "Create a new ride_requests row, should succeed" do
    assert_difference('RideRequest.count') do
    	post :create, ride_request: { user_id: @ride_request.user_id, event_list_id: @ride_request.event_list_id, confirmed: @ride_request.confirmed }
    end
    assert_redirected_to ride_request_path(assigns(:ride_request))
  end

end
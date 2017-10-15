require 'test_helper'

class RideRequestsControllerTest < ActionController::TestCase

  
  test "Should be able to pull the index page of this Controller" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ride_requests)
  end

  test "Should be able to pull the new page of this Controller" do
    get :new
    assert_response :success
  end


  


end

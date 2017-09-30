require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get drive" do
    get :drive
    assert_response :success
  end

  test "should get ride" do
    get :ride
    assert_response :success
  end

end

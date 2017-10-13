require 'test_helper'

class UserVehiclesControllerTest < ActionController::TestCase
  setup do
    @user_vehicle = user_vehicles(:one)
    sign_in users(:user_one)
    sign_in users(:user_two)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_vehicle" do
    assert_difference('UserVehicle.count') do
      post :create, user_vehicle: { maxRider: @user_vehicle.maxRider, user_id: @user_vehicle.user_id, vehicleColor: @user_vehicle.vehicleColor, vehicleType: @user_vehicle.vehicleType }
    end

    assert_redirected_to user_vehicle_path(assigns(:user_vehicle))
  end

  test "should show user_vehicle" do
    get :show, id: @user_vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_vehicle
    assert_response :success
  end

  test "should update user_vehicle" do
    patch :update, id: @user_vehicle, user_vehicle: { maxRider: @user_vehicle.maxRider, user_id: @user_vehicle.user_id, vehicleColor: @user_vehicle.vehicleColor, vehicleType: @user_vehicle.vehicleType }
    assert_redirected_to user_vehicle_path(assigns(:user_vehicle))
  end

  test "should destroy user_vehicle" do
    assert_difference('UserVehicle.count', -1) do
      delete :destroy, id: @user_vehicle
    end

    assert_redirected_to user_vehicles_path
  end
end

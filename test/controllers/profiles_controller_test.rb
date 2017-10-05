require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { age: @profile.age, city: @profile.city, driver: @profile.driver, drivernrider: @profile.drivernrider, first_name: @profile.first_name, last_name: @profile.last_name, non_smoker: @profile.non_smoker, rider: @profile.rider, smoker: @profile.smoker, state: @profile.state, street_address: @profile.street_address, username: @profile.username, zip: @profile.zip }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { age: @profile.age, city: @profile.city, driver: @profile.driver, drivernrider: @profile.drivernrider, first_name: @profile.first_name, last_name: @profile.last_name, non_smoker: @profile.non_smoker, rider: @profile.rider, smoker: @profile.smoker, state: @profile.state, street_address: @profile.street_address, username: @profile.username, zip: @profile.zip }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end

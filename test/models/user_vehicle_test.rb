require 'test_helper'

class UserVehicleTest < ActiveSupport::TestCase
test "creates a valid record" do
userVehicle = UserVehicle.new
userVehicle.username = "HSimpson"
userVehicle.vehicleType = ["Pink"].join("<br>")
userVehicle.vehicleColor = "Black"
userVehicle.maxRider = "3"
assert userVehicle.save
end
test "should not save unless userName is filled in" do
userVehicle = UserVehicle.new
assert !userVehicle.save # save should fail because there are errors.
assert userVehicle.errors[:username].include?("can't be blank")
end
test "should not save unless firstName is filled in" do
userVehicle = UserVehicle.new
assert !userVehicle.save # save should fail because there are errors.
assert userVehicle.errors[:vehicleType].include?("can't be blank")
end
test "should not save unless lastName is filled in" do
userVehicle = UserVehicle.new
assert !userVehicle.save # save should fail because there are errors.
assert userVehicle.errors[:vehicleColor].include?("can't be blank")
end
test "should not save unless Email is filled in" do
userVehicle = UserVehicle.new
assert !userVehicle.save # save should fail because there are errors.
assert userVehicle.errors[:maxRider].include?("can't be blank")
end
end

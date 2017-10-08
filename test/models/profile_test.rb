require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
test "creates a valid record" do
profile = Profile.new
profile.userName = "HSimpson"
profile.firstName = ["Homer"].join("<br>")
profile.lastName = "Simpson"
profile.age = "35"
profile.streetAddress = "742 Evergreen Terrace"
profile.city = "Springfield"
profile.state = "Oregon"
profile.zip  = "97403"
assert profile.save
end
test "should not save unless userName is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:userName].include?("can't be blank")
end
test "should not save unless firstName is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:firstName].include?("can't be blank")
end
test "should not save unless lastName is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:lastName].include?("can't be blank")
end
test "should not save unless age is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:age].include?("can't be blank")
end
test "should not save unless streetAddress is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:streetAddress].include?("can't be blank")
end
test "should not save unless city is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:city].include?("can't be blank")
end
test "should not save unless state is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:state].include?("can't be blank")
end
test "should not save unless zip is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:zip].include?("can't be blank")
end
end

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
test "creates a valid record" do
profile = Profile.new
profile.username = "HSimpson"
profile.first_name = "Homer"
profile.last_name = "Simpson"
profile.age = "35"
profile.street_address = "742 Evergreen Terrace"
profile.city = "Springfield"
profile.state = "Oregon"
profile.zip  = "97403"
assert profile.save
end
test "should not save unless username is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:username].include?("can't be blank")
end
test "should not save unless first_name is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:first_name].include?("can't be blank")
end
test "should not save unless last_name is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:last_name].include?("can't be blank")
end
test "should not save unless age is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:age].include?("can't be blank")
end
test "should not save unless street_address is filled in" do
profile = Profile.new
assert !profile.save # save should fail because there are errors.
assert profile.errors[:street_address].include?("can't be blank")
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

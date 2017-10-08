require 'test_helper'

class EventListTest < ActiveSupport::TestCase
test "creates a valid record" do
eventList = EventList.new
eventList.eventName = "Halloween"
eventList.eventDescription = ["Party like it's 1999"].join("<br>")
eventList.nbrOfRiders = "3"
eventList.vehicleType = "Sedan"
eventList.eventDriver = "true"
eventlist.createdBy = "hsimpson"
eventList.streetAddress = "742 Evergreen Terrace"
eventList.city = "Springfield"
eventList.state = "Oregon"
eventList.zip  = "97403"
eventList.PUstreetAddress = "620 W. Clairemont"
eventList.PUcity = "Eau Claire"
eventList.PUstate = "WI"
eventList.PUzip  = "54703"
assert eventList.save
end
test "should not save unless eventName is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:eventName].include?("can't be blank")
end
test "should not save unless eventDescription is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:eventDescription].include?("can't be blank")
end
test "should not save unless nbrOfRiders is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:nbrOfRiders].include?("can't be blank")
end
test "should not save unless vehicleType is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:vehicleType].include?("can't be blank")
end
test "should not save unless createdBy is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:createdBy].include?("can't be blank")
end
test "should not save unless streetAddress is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:streetAddress].include?("can't be blank")
end
test "should not save unless city is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:city].include?("can't be blank")
end
test "should not save unless state is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:state].include?("can't be blank")
end
test "should not save unless zip is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:zip].include?("can't be blank")
end
test "should not save unless pick up streetAddress is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:PUstreetAddress].include?("can't be blank")
end
test "should not save unless pick up city is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:PUcity].include?("can't be blank")
end
test "should not save unless pick up state is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:PUstate].include?("can't be blank")
end
test "should not save unless pick up zip is filled in" do
eventList = EventList.new
assert !eventList.save # save should fail because there are errors.
assert eventList.errors[:PUzip].include?("can't be blank")
end
end

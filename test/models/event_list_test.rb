require '../test_helper'

class EventListTest < ActiveSupport::TestCase

	include Devise::TestHelpers

  	def setup
  	end

	test "creates a valid record" do
		event_lists = EventList.new
		event_lists.eventName = "Halloween"
		event_lists.eventDescription = ["Party like it's 1999"].join("<br>")
		event_lists.nbrOfRiders = "3"
		event_lists.vehicleType = "Sedan"
		event_lists.eventDriver = "true"
		event_lists.createdBy = "hsimpson"
		event_lists.streetAddress = "742 Evergreen Terrace"
		event_lists.City = "Springfield"
		event_lists.State = "Oregon"
		event_lists.Zip  = "97403"
		event_lists.PUstreetAddress = "620 W. Clairemont"
		event_lists.PUCity = "Eau Claire"
		event_lists.PUState = "WI"
		event_lists.PUZip  = "54703"
		assert event_lists.save
	end

	test "should not save unless eventName is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:eventName].include?("can't be blank")
	end

	test "should not save unless eventDescription is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:eventDescription].include?("can't be blank")
	end
	test "should not save unless nbrOfRiders is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:nbrOfRiders].include?("can't be blank")
	end

	test "should not save unless vehicleType is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:vehicleType].include?("can't be blank")
	end

	test "should not save unless createdBy is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:createdBy].include?("can't be blank")
	end

	test "should not save unless streetAddress is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:streetAddress].include?("can't be blank")
	end

	test "should not save unless city is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:City].include?("can't be blank")
	end

	test "should not save unless state is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:State].include?("can't be blank")
	end

	test "should not save unless zip is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:Zip].include?("can't be blank")
	end

	test "should not save unless pick up streetAddress is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:PUstreetAddress].include?("can't be blank")
	end

	test "should not save unless pick up city is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:PUCity].include?("can't be blank")
	end

	test "should not save unless pick up state is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:PUState].include?("can't be blank")
	end

	test "should not save unless pick up zip is filled in" do
		event_lists = EventList.new
		assert !event_lists.save # save should fail because there are errors.
		assert event_lists.errors[:PUZip].include?("can't be blank")
	end

end

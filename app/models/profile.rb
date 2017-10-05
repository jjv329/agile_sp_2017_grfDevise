class Profile < ActiveRecord::Migration
attr_accessor :fname, :lname, :username, :city, :state, :zip, :typeofuser, :passenger, :smoker


  def initialize(attributes = {})
    @fname  = attributes[:name]
    @lname = attribute[:lname]
    @username = attribute[:username]
    @city = attributes[:city]
    @state = attributes[:state]
    @zip = attributes[:zip]
    @typeofuser = attributes[:typeofuser]
    @passenger = attributes[:passenger]
    @smoker = attributes[:smoker]
  end

end



end

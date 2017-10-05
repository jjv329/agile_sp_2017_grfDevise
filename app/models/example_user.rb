class User
  attr_accessor :name, :username,:password,:email, :phone, :streetAddress, :city, :state, :zip

  def initialize(attributes = {})
    @name  = attributes[:name]
    @username = attribute[:username]
    @password = attribute[:password]
    @email = attributes[:email]
    @phone = attributes[:phone]
    @streetAddress = attributes[:streetAddress]
    @city = attributes[:city]
    @state = attributes[:state]
    @zip = attributes[:zip]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end

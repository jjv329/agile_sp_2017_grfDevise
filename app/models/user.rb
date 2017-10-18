class User < ActiveRecord::Base
  has_one :profile
  has_many :event_lists
  has_many :user_vehicles
  has_many :ride_requests
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
end

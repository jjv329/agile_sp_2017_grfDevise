class User < ActiveRecord::Base
  has_many :event_lists
  has_many :user_vehicles
  has_one :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
end

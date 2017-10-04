class StaticPagesController < ApplicationController
  	before_filter :authenticate_user!, only: [:show]
	def home
  end

  def drive
  end

  def ride
  end
	
	def show
		current_user
	end
end

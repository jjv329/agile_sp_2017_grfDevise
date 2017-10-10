class StaticPagesController < ApplicationController
    def home
      redirect_to profile_path(current_user.profile.id) if user_signed_in?
    end

    def drive
    end

    def ride
    end
end

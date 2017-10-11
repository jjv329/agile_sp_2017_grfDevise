class StaticPagesController < ApplicationController
    def home
      if user_signed_in?
        if Profile.exists?(user_id: current_user.id)
          redirect_to profile_path(current_user.profile)
        else
          redirect_to new_profile_path
        end
      end
    end

    def drive
    end

    def ride
    end
end

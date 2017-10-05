class ProfileController < ApplicationController
def new
  @profile= Profile.new
end

def submit_tag
@profile = Profile.new(profile_params)
  if @profile.save
  redirect_to @profile
else
  render :new
  end
end

def profile_params
  params.require(:profile).permit(:username, :fname, :lname, :age, :city, :state, :zip, :vehicles, :typeofuser, :passenger, :smoker)
end

end

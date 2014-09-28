class ProfilesController < ApplicationController
  before_action :authorize
  def index
    @profile = Profile.all
  end
  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      flash[:notice] = "Profile has been created"
      redirect_to @profile
    else
      render 'new'
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:first_name, :last_name,
    :email, :bio)
  end

  private

  def authorize
    redirect_to signin_path unless current_user
  end
end

class ConnectionProfilesController < ApplicationController
  before_action :set_connection_profile, only: [:show, :edit, :update, :destroy]

  def index
    @connection_profiles = ConnectionProfile.all  
  end

  def new
    @connection_profile = ConnectionProfile.new
  end

  def create 
    @connection_profile = ConnectionProfile.new(connection_profile_params)

    if @connection_profile.save
      redirect_to @connection_profile
    end
  end

  def edit; end
  def show; end

  def update
    if @connection_profile.update(connection_profile_params)
      redirect_to @connection_profile
    end
  end

  private
  
  def connection_profile_params
    params.require(:connection_profile).permit(:name, :username, :password)
  end

  def set_connection_profile
    @connection_profile = ConnectionProfile.find(params[:id])
  end
end

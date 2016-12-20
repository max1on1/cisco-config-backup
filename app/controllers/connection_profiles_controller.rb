class ConnectionProfilesController < ApplicationController
  def index
    @connection_profiles = ConnectionProfile.all  
  end
end

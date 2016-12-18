class DevicesController < ApplicationController
  before_action :set_device, only: [:show, :edit, :destroy, :update]

  def index
    @devices = Device.all
  end

  def new
    @device = Device.new
  end

  def create
    @device = Device.new(device_params)

    if @device.save
      redirect_to @device
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update; end

  def destroy
    @device.destroy
    redirect_to device_path
  end

  private

  def set_device
    @device = Device.find(params[:id])
  end

  def device_params
    params.require(:device).permit(:hostname, :ip, :connection_profile_id)
  end
end

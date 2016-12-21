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

  def difference
    z = params[:conf_ids]
    @config_1 = Config.find(z[0].to_i)
    @config_2 = Config.find(z[1].to_i)
    @x = Diffy::SplitDiff.new(@config_1.config, @config_2.config, :format => :html)
  end

  private

  def set_device
    @device = Device.find(params[:id])
  end

  def device_params
    params.require(:device).permit(:hostname, :ip, :connection_profile_id, conf_ids: [] )
  end
end

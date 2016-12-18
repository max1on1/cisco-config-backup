class ConfigsController < ApplicationController
  before_action :set_config, only: [:show, :destroy]

  def show; end

  def destroy
    @config.destroy
    redirect_to device_path(@config.device_id)
  end

  private

  def set_config
    @config = Config.find(params[:id])
  end
end

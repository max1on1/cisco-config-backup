class AddDeviceIdToConfig < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :configs, :device
  end
end

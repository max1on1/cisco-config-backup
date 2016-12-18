class AddConnectionProfileIdToDevice < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :devices, :connection_profile
  end
end

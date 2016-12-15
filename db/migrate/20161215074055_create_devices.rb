class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.text :hostname
      t.text :ip

      t.timestamps
    end
  end
end

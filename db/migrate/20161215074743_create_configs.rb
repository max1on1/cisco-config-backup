class CreateConfigs < ActiveRecord::Migration[5.0]
  def change
    create_table :configs do |t|
      t.text :config

      t.timestamps
    end
  end
end

class CreateConnectionProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :connection_profiles do |t|
      t.text :username
      t.text :password

      t.timestamps
    end
  end
end

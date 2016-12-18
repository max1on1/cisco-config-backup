class AddColumnToConnectionProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :connection_profiles, :name, :text
  end
end

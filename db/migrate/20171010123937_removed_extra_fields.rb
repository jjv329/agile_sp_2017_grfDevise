class RemovedExtraFields < ActiveRecord::Migration
  def change
    rename_column :event_lists, :createdBy, :user_id
    remove_column :profiles, :driver
    remove_column :profiles, :drivernrider
    remove_column :profiles, :rider
    remove_column :profiles, :non_smoker
    add_column :profiles, :type, :string
    drop_table :new_users
    
    
  end
end

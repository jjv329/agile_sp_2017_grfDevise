class UpdateUsernameToHoldInt < ActiveRecord::Migration
  def change
    change_column :event_lists, :createdBy, :integer
    rename_column :profiles, :username, :user_id
    change_column :profiles, :user_id, :integer
    rename_column :user_vehicles, :username, :user_id
    change_column :user_vehicles, :user_id, :integer
  end
end

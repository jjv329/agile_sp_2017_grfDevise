class RenameRequestField < ActiveRecord::Migration
  def change
    rename_column :ride_requests, :event_id, :event_list_id
  end
end

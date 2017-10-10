class ChangedProfileTypeToAcctType < ActiveRecord::Migration
  def change
    rename_column :profiles, :type, :acct_type
  end
end

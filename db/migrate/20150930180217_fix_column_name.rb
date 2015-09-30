class FixColumnName < ActiveRecord::Migration
  def change
      rename_column :users, :emails, :email
  end
end

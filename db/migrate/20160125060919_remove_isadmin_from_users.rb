class RemoveIsadminFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :isAdmin, :boolean
  end
end

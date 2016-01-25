class RemoveIsinterviewerFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :isInterviewer, :boolean
  end
end

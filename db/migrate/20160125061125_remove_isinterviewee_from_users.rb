class RemoveIsintervieweeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :isInterviewee, :boolean
  end
end

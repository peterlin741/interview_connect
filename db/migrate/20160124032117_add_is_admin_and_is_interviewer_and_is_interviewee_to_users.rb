class AddIsAdminAndIsInterviewerAndIsIntervieweeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :isAdmin, :boolean
    add_column :users, :isInterviewer, :boolean
    add_column :users, :isInterviewee, :boolean
  end
end

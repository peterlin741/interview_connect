class AddScheduledToInterviews < ActiveRecord::Migration
  def change
    add_column :interviews, :scheduled, :boolean, default: false
  end
end

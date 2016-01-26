class AddScheduledToInterviews < ActiveRecord::Migration
  def change
    add_column :interviews, :scheduled, :boolean
  end
end

class RemoveScheduledFromInterviews < ActiveRecord::Migration
  def change
    remove_column :interviews, :scheduled, :boolean
  end
end

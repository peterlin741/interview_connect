class RemoveInterviewsFromUsers < ActiveRecord::Migration
  def change
    remove_reference :users, :interview, index: true, foreign_key: true
  end
end

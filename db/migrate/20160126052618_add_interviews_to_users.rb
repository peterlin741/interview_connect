class AddInterviewsToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :interview, index: true, foreign_key: true
  end
end

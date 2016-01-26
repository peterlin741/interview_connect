class AddUserToInterviews < ActiveRecord::Migration
  def change
    add_reference :interviews, :user, index: true, foreign_key: true
  end
end

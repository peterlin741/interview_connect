class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :interviewee_email
      t.string :interviewer_email
      t.datetime :interview_date

      t.timestamps null: false
    end
  end
end

class Interview < ActiveRecord::Base

  belongs_to :user

  validates :interview_date, presence: true

end

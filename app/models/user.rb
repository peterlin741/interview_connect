class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # owned by interviewee
  has_many :interviews
  # rails g migration AddUserToInterviews user:references 

  has_attached_file :resume, bucket: :interviewconnect

  validates_attachment_content_type :resume, :content_type => ['application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'text/plain'], :if => :resume_attached?

  def resume_attached?
    self.resume.file?
  end

end

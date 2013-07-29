class Course < ActiveRecord::Base
  belongs_to :college
  belongs_to :subject
  has_many :interests
  has_many :teachers, :through => :interests

  def name
    return self.subject.name
  end
end

class Teacher < ActiveRecord::Base
  has_many :interests
  has_many :courses, :through => :interests
  has_many :concentrations
  has_many :subjects, :through => :concentrations

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
end

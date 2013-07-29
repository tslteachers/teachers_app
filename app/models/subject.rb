class Subject < ActiveRecord::Base
  has_many :courses
  has_many :concentrations
  has_many :teachers, :through => :concentrations
end

class Facultyprofile < ActiveRecord::Base
  has_many :message
  has_one :status
end

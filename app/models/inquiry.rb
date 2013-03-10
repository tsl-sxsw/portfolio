class Inquiry < ActiveRecord::Base
  attr_accessible :email, :message, :name
end

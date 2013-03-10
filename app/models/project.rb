class Project < ActiveRecord::Base
  attr_accessible :description, :image_1, :image_2, :image_3, :tags, :title
end

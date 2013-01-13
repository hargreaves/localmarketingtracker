class Market < ActiveRecord::Base
  attr_accessible :name
  
  has_many :initiatives
end

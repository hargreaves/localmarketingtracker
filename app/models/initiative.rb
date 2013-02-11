class Initiative < ActiveRecord::Base
  attr_accessible :actualemails, :budget, :enddate, :landingpage, :launchdate, :name, :offer, :spent, :target, :targetemails, :teamlead, :market_id
  
  belongs_to :market
  
  validates :name, :presence => true
  validates :teamlead, :presence => true
  validates :targetemails, :presence => true
  validates :budget, :presence => true
  
end

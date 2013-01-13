class AddMarketIdtoInitiative < ActiveRecord::Migration
  def change
  	add_column :initiatives, :market_id, :integer
  end
end

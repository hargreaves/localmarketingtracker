class Addq1targetandbudgettoMarket < ActiveRecord::Migration
  def change
  	add_column :markets, :q12013_budget, :integer
  	add_column :markets, :q12013_target, :integer
  end
end

class RemoveQuestionsFromReviews < ActiveRecord::Migration
  def change
  	remove_column :reviews, :transportation_access
  	remove_column :reviews, :safe
  	remove_column :reviews, :fun_area
  	remove_column :reviews, :delivery
  	remove_column :reviews, :dining
  	remove_column :reviews, :noise_outside
  	remove_column :reviews, :noise_neighbors
  	remove_column :reviews, :appliances
  	remove_column :reviews, :mgmt_reliability
  	remove_column :reviews, :bldg_clean
  	remove_column :reviews, :construction
  	remove_column :reviews, :mgmt_accomodate
  	remove_column :reviews, :heating
  	remove_column :reviews, :cooling
  	remove_column :reviews, :hot_water_lasts
  	remove_column :reviews, :long_to_heat_water
  	remove_column :reviews, :shower_pressure
  	remove_column :reviews, :toilet_clogs
  	remove_column :reviews, :closet_space
  	remove_column :reviews, :pests
  end
end

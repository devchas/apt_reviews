class AddCriteriaToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :transportation_access, :boolean
  	add_column :reviews, :safe, :boolean
  	add_column :reviews, :fun_area, :boolean
  	add_column :reviews, :delivery, :boolean
  	add_column :reviews, :dining, :boolean
  	add_column :reviews, :noise_outside, :boolean
  	add_column :reviews, :noise_neighbors, :boolean
  	add_column :reviews, :appliances, :boolean
  	add_column :reviews, :mgmt_reliability, :boolean
  	add_column :reviews, :bldg_clean, :boolean
  	add_column :reviews, :construction, :boolean
  	add_column :reviews, :mgmt_accomodate, :boolean
  	add_column :reviews, :heating, :boolean
  	add_column :reviews, :cooling, :boolean
  	add_column :reviews, :hot_water_lasts, :boolean
  	add_column :reviews, :long_to_heat_water, :boolean
  	add_column :reviews, :shower_pressure, :boolean
  	add_column :reviews, :toilet_clogs, :boolean
  	add_column :reviews, :closet_space, :boolean
  end
end

class AddPestsToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :pests, :boolean
  end
end

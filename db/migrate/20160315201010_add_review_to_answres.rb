class AddReviewToAnswres < ActiveRecord::Migration
  def change
  	add_column :answers, :review_id, :integer
  end
end

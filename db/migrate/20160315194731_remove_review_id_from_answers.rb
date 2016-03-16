class RemoveReviewIdFromAnswers < ActiveRecord::Migration
  def change
  	remove_column :answers, :review_id
  end
end

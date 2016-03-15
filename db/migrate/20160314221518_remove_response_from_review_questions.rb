class RemoveResponseFromReviewQuestions < ActiveRecord::Migration
  def change
  	remove_column :review_questions, :response
  end
end

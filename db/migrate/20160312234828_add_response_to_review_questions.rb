class AddResponseToReviewQuestions < ActiveRecord::Migration
  def change
  	add_column :review_questions, :response, :string
  end
end

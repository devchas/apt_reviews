class CreateReviewQuestions < ActiveRecord::Migration
  def change
    create_table :review_questions do |t|
    	t.string :question
    	t.string :method
    	t.string :category
    end
  end
end

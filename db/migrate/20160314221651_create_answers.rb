class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
    	t.integer :review_id
    	t.integer :review_question_id
    	t.boolean :response
    end
  end
end

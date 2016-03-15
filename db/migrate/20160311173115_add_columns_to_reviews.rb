class AddColumnsToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :title, :string
  	add_column :reviews, :overal_rating, :integer
  end
end

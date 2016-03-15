class AddApartmentToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :apartment, index: true, foreign_key: true
  end
end

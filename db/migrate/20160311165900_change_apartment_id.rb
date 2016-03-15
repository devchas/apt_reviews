class ChangeApartmentId < ActiveRecord::Migration
  def change
  	change_column_null :reviews, :apartment_id, false
  end
end

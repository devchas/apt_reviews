class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
    	t.string :street_address
    	t.string :street
    	t.string :city
    	t.string :state
    	t.string :zip
    end
  end
end

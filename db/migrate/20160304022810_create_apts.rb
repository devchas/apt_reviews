class CreateApts < ActiveRecord::Migration
  def change
    create_table :apts do |t|
      t.string :name
      t.string :email
      t.string :street
      t.string :apt_num
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :rent_or_buy
    end
  end
end

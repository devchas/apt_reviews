class RenameApartmentsTable < ActiveRecord::Migration
  def change
  	rename_table :apartments, :signups
  end
end

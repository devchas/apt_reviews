class RenameAptsTable < ActiveRecord::Migration
  def change
  	rename_table :apts, :apartments
  end
end

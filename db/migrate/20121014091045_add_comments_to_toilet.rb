class AddCommentsToToilet < ActiveRecord::Migration
  def change
    add_column :toilets, :comment, :string
	add_column :toilets, :latitude, :decimal, {:precision=>10, :scale=>6}
	add_column :toilets, :longitude, :decimal, {:precision=>10, :scale=>6}
  end
end

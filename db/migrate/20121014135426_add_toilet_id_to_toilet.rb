class AddToiletIdToToilet < ActiveRecord::Migration
  def change
    add_column :toilets, :toiletId, :string
  end
end

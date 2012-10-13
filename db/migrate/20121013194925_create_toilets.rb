class CreateToilets < ActiveRecord::Migration
  def change
    create_table :toilets do |t|
      t.boolean :occupied
      t.integer :sender

      t.timestamps
    end
  end
end

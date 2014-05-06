class CreateHaikus < ActiveRecord::Migration
  def change
    create_table :haikus do |t|
      t.string :poem
      t.integer :user_id

      t.timestamps
    end
  end
end

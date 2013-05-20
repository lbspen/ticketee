class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :user_id
      t.string :integer
      t.integer :thing_id
      t.string :thing_type
      t.string :action

      t.timestamps
    end
  end
end

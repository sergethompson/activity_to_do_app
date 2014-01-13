class CreateActivityUserTables < ActiveRecord::Migration
  def change
    create_table :activity_user_tables do |t|
      t.integer :user_id
      t.integer :activity_id

      t.timestamps
    end
  end
end

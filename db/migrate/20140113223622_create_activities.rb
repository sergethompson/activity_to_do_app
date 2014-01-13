class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :activity
      t.string :place
      t.string :time
      t.text :description

      t.timestamps
    end
  end
end

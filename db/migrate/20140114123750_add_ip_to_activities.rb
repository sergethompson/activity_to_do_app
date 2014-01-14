class AddIpToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :ip_address, :string
  end
end

class AddAdminToUser1s < ActiveRecord::Migration
  def self.up
    add_column :user1s, :admin, :string
  end

  def self.down
    remove_column :user1s, :admin
  end
end

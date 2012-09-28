class AddMessageToUser1s < ActiveRecord::Migration
  def self.up
    add_column :user1s, :message, :text
  end

  def self.down
    remove_column :user1s, :message
  end
end

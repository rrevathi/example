class AddTermToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :term, :string
  end

  def self.down
    remove_column :users, :term
  end
end

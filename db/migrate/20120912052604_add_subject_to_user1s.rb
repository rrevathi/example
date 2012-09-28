class AddSubjectToUser1s < ActiveRecord::Migration
  def self.up
    add_column :user1s, :subject, :string
  end

  def self.down
    remove_column :user1s, :subject
  end
end

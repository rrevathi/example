class AddDoctorIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :doctor_id, :integer
  end

  def self.down
    remove_column :users, :doctor_id
  end
end

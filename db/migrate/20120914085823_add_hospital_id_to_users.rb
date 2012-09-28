class AddHospitalIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :hospital_id, :integer
  end

  def self.down
    remove_column :users, :hospital_id
  end
end

class Doctor < ActiveRecord::Base
	belongs_to :hospital
	 has_many :users
  

	
#protected
#after_create do |doctor|
#p "created succesfully"
#end
validates :name, :presence => true
scope :fetch_by_id,lambda{|id| where('id =?',id)}
end

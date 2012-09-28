class Hospital < ActiveRecord::Base
	has_many :doctors
	has_many :users
#protected
#after_create do |hospital|
#p "created succesfully"
#end
validates :name, :presence => true
end

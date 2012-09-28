require 'spec_helper'

describe Doctor do
  
	before(:each) do
		@doctor = Doctor.new(:id => "",
						:name => "reva",
						:hospital_id => "1")
						
	end
	#Associations
	  it { should belong_to(:hospital)}
	  it { should have_many(:users)}
	 
	 
	 #Validations
	 
	 
	 it { should validate_presence_of(:name) }
 end
 

require 'spec_helper'

describe User do
  
	before(:each) do
		@user = User.new(:id => "",
					:email => "revarajait@gmail.com",
					:encrypted_password => "$2a$10$61AboQHsnIBs2Sm/t/F7E.Cl70qsXOCU.l9LU0UUidz", 
					:firstname => "reva",
					:lastname => "r",
					:gender => "female",
					:term => "1")
	end
	#Associations
	  it { should belong_to(:doctor)}
	  it { should belong_to(:hospital)}
	 
	 
	 
	 #Validations
	 
	 it { should validate_presence_of(:email) }
 end
 

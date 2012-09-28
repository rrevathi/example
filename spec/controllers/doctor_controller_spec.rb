require 'spec_helper'
describe DoctorController ,:type=>"controller" do
include Devise::TestHelpers

it "should get before_filtered for authenticate_user!" do
controller.stub!(:doctor).and_return(true)
end

    describe "GET new" do
    it "assigns the new doctor as @doctor" do
  doctor=Doctor.create(:name=>"reva",:hospital_id=>1)
     response.should be_success
    end
    end
    
    describe "POST Create" do
    it "Create the new doctor" do
  doctor=Doctor.create(:name=>"reva",:hospital_id=>1)
  post :create
  if doctor.save
     response.should be_redirect
      else
      controller.stub!(:render).and_return(true)
      end
    end
  end
  
  describe "GET Edit" do
    it "find and edit the doctors as @doctors" do
  controller.stub!(:doctor).and_return(true)
 doctor=Doctor.create(:name=>"reva",:hospital_id=>1)
  get :edit, {:id=>doctor.to_param}
    end
  end
  
  
  describe "PUT Update" do
    it "Update doctors as @doctors" do
  controller.stub!(:doctor).and_return(true)
  doctor=Doctor.create(:name=>"reva",:hospital_id=>1)
  put :update,{:id=>doctor.to_param}
  if doctor.update_attributes(:id=>doctor.to_param)
         response.should be_redirect
      else
      controller.stub!(:render).and_return(true)
      end
    end
  end
  
  describe "DELETED destroy" do
    it "delete the doctors" do
  controller.stub!(:doctor).and_return(true)
doctor=Doctor.create(:name=>"reva",:hospital_id=>1)
delete :destroy, {:id=>doctor.to_param}
  p @doctor.destroy rescue nil
    end
  end
  
  end
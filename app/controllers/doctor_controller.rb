class DoctorController < ApplicationController
	before_filter :authenticate_user!, :except => [:show, :index]
  def index
	  @doctor=Doctor.all
  end
  
  def list
	  @doctor=Doctor.find(:all)
  end
  
  def show
	 # @doctor=Doctor.find(params[:id])
	  @doctor=Doctor.fetch_by_id(params[:id]).first
  end
  
  
  def new
	  @doctor=Doctor.new
  end

  def create
	  @doctor=Doctor.new(params[:doctor])
	  #~ if @doctor.name==Doctor.find_by_name(params[:name])
		#~ puts " hello ruby on rails"
	#~ end
	  if @doctor.save
		   #UserMailer.welcome_email(@doctor).deliver
		 # puts "created successfully"
		 # puts @doctor
		  flash[:notice]="Doctor has been created"
		  redirect_to @doctor
		  else
			  render :action => "new"
		  end
	
  end
	  

  def edit
	  @doctor=Doctor.fetch_by_id(params[:id]).first
  end
  
  def update 
	  @doctor=Doctor.fetch_by_id(params[:id]).first
	  if @doctor.update_attributes(params[:doctor])
		  redirect_to :action => "index"
		  else
			  render :action => "edit"
		  end
	  end
	  
  def destroy 
	  Doctor.find(params[:id]).destroy
	  redirect_to :action => "index"
  end
  
  #~ def asso
	    #~ @doctor=Doctor.new(params[:id])
	    #~ @doctor = Doctor.find_by_name(params[:name])

	    #~ #@hospital=Hospital.all
  #~ end
	  

end

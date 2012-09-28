class HospitalController < ApplicationController
 def index
	  @hospital=Hospital.all
  end
  
  def list
	  @hospital=Hospital.find(:all)
  end
  
  def show
	  @hospital=Hospital.find(params[:id])
  end
  
  
  def new
	  @hospital=Hospital.new
  end

  def create
	  @hospital=Hospital.new(params[:hospital])
	  if @hospital.save
		  flash[:notice]="Hospital has been created"
		  redirect_to @hospital
		  else
			  render :action => "new"
		  end
  end
  def edit
	  @hospital=Hospital.find(params[:id])
  end
  
  def update 
	  @hospital=Hospital.find(params[:id])
	  if @hospital.update_attributes(params[:hospital])
		  redirect_to :action => "index"
		  else
			  render :action => "edit"
		  end
	  end
	  
  def destroy 
	  Hospital.find(params[:id]).destroy
	  redirect_to :action => "index"
  end

end

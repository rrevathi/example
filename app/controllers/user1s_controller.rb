class User1sController < ApplicationController
  # GET /user1s
  # GET /user1s.xml
  def index
    @user1s = User1.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user1s }
    end
  end

  # GET /user1s/1
  # GET /user1s/1.xml
  def show
    @user1 = User1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user1 }
    end
  end

  # GET /user1s/new
  # GET /user1s/new.xml
  def new
    @user1 = User1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user1 }
    end
  end

  # GET /user1s/1/edit
  def edit
    @user1 = User1.find(params[:id])
  end

  # POST /user1s
  # POST /user1s.xml
  def create
    @user1 = User1.new(params[:user1])

    respond_to do |format|
      if @user1.save
	      UserMailer.welcome_email(@user1).deliver
        format.html { redirect_to(@user1, :notice => 'User1 was successfully created.') }
        format.xml  { render :xml => @user1, :status => :created, :location => @user1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user1s/1
  # PUT /user1s/1.xml
  def update
    @user1 = User1.find(params[:id])

    respond_to do |format|
      if @user1.update_attributes(params[:user1])
        format.html { redirect_to(@user1, :notice => 'User1 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user1s/1
  # DELETE /user1s/1.xml
  def destroy
    @user1 = User1.find(params[:id])
    @user1.destroy

    respond_to do |format|
      format.html { redirect_to(user1s_url) }
      format.xml  { head :ok }
    end
  end
end

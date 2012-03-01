class LegsController < ApplicationController
  
  # GET /legs
  # GET /legs.json
  def index
    @legs = Leg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @legs }
    end
  end

  # GET /legs/1
  # GET /legs/1.json
  def show
    @leg = Leg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @leg }
    end
  end

  # GET /legs/new
  # GET /legs/new.json
  def new
    @leg = Leg.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @leg }
    end
  end

  # GET /legs/1/edit
  def edit
    @leg = Leg.find(params[:id])
  end

  # POST /legs
  # POST /legs.json
  def create
    @leg = Leg.new(params[:leg])

    respond_to do |format|
      if @leg.save
        format.html { redirect_to @leg, :notice => 'Leg was successfully created.' }
        format.json { render :json => @leg, :status => :created, :location => @leg }
      else
        format.html { render :action => "new" }
        format.json { render :json => @leg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /legs/1
  # PUT /legs/1.json
  def update
    @leg = Leg.find(params[:id])

    respond_to do |format|
      if @leg.update_attributes(params[:leg])
        format.html { redirect_to @leg, :notice => 'Leg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @leg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /legs/1
  # DELETE /legs/1.json
  def destroy
    @leg = Leg.find(params[:id])
    @leg.destroy

    respond_to do |format|
      format.html { redirect_to legs_url }
      format.json { head :no_content }
    end
  end
end

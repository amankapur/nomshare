class GuestsController < ApplicationController

  def index
  
  end

 
  def show
   

  end

  # GET /guests/new
  # GET /guests/new.json
  def new
    @guest = Guest.new

  end

  # GET /guests/1/edit
  def edit
  
  end

  # POST /guests
  # POST /guests.json
  def create
    @guest = Guest.new(params[:guest])

    respond_to do |format|
      if @guest.save
        format.html { render 'splash/thankyou', notice: 'Guest was successfully created.' }
        format.json { render json: @guest, status: :created, location: @guest }
      else
        format.html { render action: "new" }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /guests/1
  # PUT /guests/1.json
  def update

  end

  # DELETE /guests/1
  # DELETE /guests/1.json
  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy

    respond_to do |format|
      format.html { redirect_to guests_url }
      format.json { head :no_content }
    end
  end
end

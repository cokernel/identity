class MintersController < ApplicationController
  # GET /minters
  # GET /minters.json
  def index
    @minters = Minter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @minters }
    end
  end

  # GET /minters/1
  # GET /minters/1.json
  def show
    @minter = Minter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @minter }
    end
  end

  # GET /minters/new
  # GET /minters/new.json
  def new
    @minter = Minter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @minter }
    end
  end

  # GET /minters/1/edit
  def edit
    @minter = Minter.find(params[:id])
  end

  # POST /minters
  # POST /minters.json
  def create
    @minter = Minter.new(params[:minter])

    respond_to do |format|
      if @minter.save
        format.html { redirect_to @minter, notice: 'Minter was successfully created.' }
        format.json { render json: @minter, status: :created, location: @minter }
      else
        format.html { render action: "new" }
        format.json { render json: @minter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /minters/1
  # PUT /minters/1.json
  def update
    @minter = Minter.find(params[:id])

    respond_to do |format|
      if @minter.update_attributes(params[:minter])
        format.html { redirect_to @minter, notice: 'Minter was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @minter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minters/1
  # DELETE /minters/1.json
  def destroy
    @minter = Minter.find(params[:id])
    @minter.destroy

    respond_to do |format|
      format.html { redirect_to minters_url }
      format.json { head :ok }
    end
  end
end

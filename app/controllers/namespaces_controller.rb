class NamespacesController < ApplicationController
  # GET /namespaces
  # GET /namespaces.json
  def index
    @namespaces = Namespace.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @namespaces }
    end
  end

  # GET /namespaces/1
  # GET /namespaces/1.json
  def show
    @namespace = Namespace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @namespace }
    end
  end

  # GET /namespaces/new
  # GET /namespaces/new.json
  def new
    @namespace = Namespace.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @namespace }
    end
  end

  # GET /namespaces/1/edit
  def edit
    @namespace = Namespace.find(params[:id])
  end

  # POST /namespaces
  # POST /namespaces.json
  def create
    @namespace = Namespace.new(params[:namespace])

    respond_to do |format|
      if @namespace.save
        format.html { redirect_to @namespace, notice: 'Namespace was successfully created.' }
        format.json { render json: @namespace, status: :created, location: @namespace }
      else
        format.html { render action: "new" }
        format.json { render json: @namespace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /namespaces/1
  # PUT /namespaces/1.json
  def update
    @namespace = Namespace.find(params[:id])

    respond_to do |format|
      if @namespace.update_attributes(params[:namespace])
        format.html { redirect_to @namespace, notice: 'Namespace was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @namespace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /namespaces/1
  # DELETE /namespaces/1.json
  def destroy
    @namespace = Namespace.find(params[:id])
    @namespace.destroy

    respond_to do |format|
      format.html { redirect_to namespaces_url }
      format.json { head :ok }
    end
  end
end

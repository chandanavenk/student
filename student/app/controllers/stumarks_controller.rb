class StumarksController < ApplicationController
  # GET /stumarks
  # GET /stumarks.json
  def index
    @stumarks = Stumark.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stumarks }
    end
  end

  # GET /stumarks/1
  # GET /stumarks/1.json
  def show
    @stumark = Stumark.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stumark }
    end
  end

  # GET /stumarks/new
  # GET /stumarks/new.json
  def new
    @stumark = Stumark.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stumark }
    end
  end

  # GET /stumarks/1/edit
  def edit
    @stumark = Stumark.find(params[:id])
  end

  # POST /stumarks
  # POST /stumarks.json
  def create
    @stumark = Stumark.new(params[:stumark])

    respond_to do |format|
      if @stumark.save
        format.html { redirect_to @stumark, notice: 'Stumark was successfully created.' }
        format.json { render json: @stumark, status: :created, location: @stumark }
      else
        format.html { render action: "new" }
        format.json { render json: @stumark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stumarks/1
  # PUT /stumarks/1.json
  def update
    @stumark = Stumark.find(params[:id])

    respond_to do |format|
      if @stumark.update_attributes(params[:stumark])
        format.html { redirect_to @stumark, notice: 'Stumark was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stumark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stumarks/1
  # DELETE /stumarks/1.json
  def destroy
    @stumark = Stumark.find(params[:id])
    @stumark.destroy

    respond_to do |format|
      format.html { redirect_to stumarks_url }
      format.json { head :no_content }
    end
  end
end

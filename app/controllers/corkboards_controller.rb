class CorkboardsController < ApplicationController
  before_action :set_corkboard, only: [:show, :edit, :update, :destroy]

  # GET /corkboards
  # GET /corkboards.json
  def index
    @corkboards = Corkboard.all
  end

  # GET /corkboards/1
  # GET /corkboards/1.json
  def show
  end

  # GET /corkboards/new
  def new
    @corkboard = Corkboard.new
  end

  # GET /corkboards/1/edit
  def edit
  end

  # POST /corkboards
  # POST /corkboards.json
  def create
    @corkboard = Corkboard.new(corkboard_params)

    respond_to do |format|
      if @corkboard.save
        format.html { redirect_to @corkboard, notice: 'Corkboard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @corkboard }
      else
        format.html { render action: 'new' }
        format.json { render json: @corkboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corkboards/1
  # PATCH/PUT /corkboards/1.json
  def update
    respond_to do |format|
      if @corkboard.update(corkboard_params)
        format.html { redirect_to @corkboard, notice: 'Corkboard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @corkboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corkboards/1
  # DELETE /corkboards/1.json
  def destroy
    @corkboard.destroy
    respond_to do |format|
      format.html { redirect_to corkboards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corkboard
      @corkboard = Corkboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corkboard_params
      params.require(:corkboard).permit(:description, :name)
    end
end

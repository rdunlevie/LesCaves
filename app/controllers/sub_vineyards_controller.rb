class SubVineyardsController < ApplicationController
  before_action :set_sub_vineyard, only: [:show, :edit, :update, :destroy]

  # GET /sub_vineyards
  # GET /sub_vineyards.json
  def index
    @sub_vineyards = SubVineyard.all
  end

  # GET /sub_vineyards/1
  # GET /sub_vineyards/1.json
  def show
  end

  # GET /sub_vineyards/new
  def new
    @sub_vineyard = SubVineyard.new
  end

  # GET /sub_vineyards/1/edit
  def edit
  end

  # POST /sub_vineyards
  # POST /sub_vineyards.json
  def create
    @sub_vineyard = SubVineyard.new(sub_vineyard_params)

    respond_to do |format|
      if @sub_vineyard.save
        format.html { redirect_to @sub_vineyard, notice: 'Sub vineyard was successfully created.' }
        format.json { render :show, status: :created, location: @sub_vineyard }
      else
        format.html { render :new }
        format.json { render json: @sub_vineyard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_vineyards/1
  # PATCH/PUT /sub_vineyards/1.json
  def update
    respond_to do |format|
      if @sub_vineyard.update(sub_vineyard_params)
        format.html { redirect_to @sub_vineyard, notice: 'Sub vineyard was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_vineyard }
      else
        format.html { render :edit }
        format.json { render json: @sub_vineyard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_vineyards/1
  # DELETE /sub_vineyards/1.json
  def destroy
    @sub_vineyard.destroy
    respond_to do |format|
      format.html { redirect_to sub_vineyards_url, notice: 'Sub vineyard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_vineyard
      @sub_vineyard = SubVineyard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_vineyard_params
      params.require(:sub_vineyard).permit(:sub_vineyard_id, :vineyard_id, :name)
    end
end

class HazardSymbolsController < ApplicationController
  before_action :set_hazard_symbol, only: [:show, :edit, :update, :destroy]

  # GET /hazard_symbols
  # GET /hazard_symbols.json
  def index
    @hazard_symbols = HazardSymbol.all
  end

  # GET /hazard_symbols/1
  # GET /hazard_symbols/1.json
  def show
  end

  # GET /hazard_symbols/new
  def new
    @hazard_symbol = HazardSymbol.new
  end

  # GET /hazard_symbols/1/edit
  def edit
  end

  # POST /hazard_symbols
  # POST /hazard_symbols.json
  def create
    @hazard_symbol = HazardSymbol.new(hazard_symbol_params)

    respond_to do |format|
      if @hazard_symbol.save
        format.html { redirect_to @hazard_symbol, notice: 'Hazard symbol was successfully created.' }
        format.json { render :show, status: :created, location: @hazard_symbol }
      else
        format.html { render :new }
        format.json { render json: @hazard_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hazard_symbols/1
  # PATCH/PUT /hazard_symbols/1.json
  def update
    respond_to do |format|
      if @hazard_symbol.update(hazard_symbol_params)
        format.html { redirect_to @hazard_symbol, notice: 'Hazard symbol was successfully updated.' }
        format.json { render :show, status: :ok, location: @hazard_symbol }
      else
        format.html { render :edit }
        format.json { render json: @hazard_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hazard_symbols/1
  # DELETE /hazard_symbols/1.json
  def destroy
    @hazard_symbol.destroy
    respond_to do |format|
      format.html { redirect_to hazard_symbols_url, notice: 'Hazard symbol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hazard_symbol
      @hazard_symbol = HazardSymbol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hazard_symbol_params
      params.require(:hazard_symbol).permit(:title, :code, :description, :image)
    end
end

class HazardSymbolsController < ApplicationController
  before_action :set_hazard_symbol, only: [:show, :edit, :update, :destroy]

  # GET /hazard_symbols
  def index
    @hazard_symbols = HazardSymbol.all
  end

  # GET /hazard_symbols/1
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

    if @hazard_symbol.save
      fredirect_to @hazard_symbol, notice: 'Hazard symbol was successfully created.'
    else
      render :new
    end
  end

  def update
    if @hazard_symbol.update(hazard_symbol_params)
      redirect_to @hazard_symbol, notice: 'Hazard symbol was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @hazard_symbol.destroy
      redirect_to hazard_symbols_url, notice: 'Hazard symbol was successfully destroyed.'
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

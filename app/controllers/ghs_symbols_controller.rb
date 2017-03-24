class GhsSymbolsController < ApplicationController
  before_action :set_ghs_symbol, only: [:show, :edit, :update, :destroy]

  # GET /ghs_symbols
  # GET /ghs_symbols.json
  def index
    @ghs_symbols = GhsSymbol.all
  end

  # GET /ghs_symbols/1
  # GET /ghs_symbols/1.json
  def show
  end

  # GET /ghs_symbols/new
  def new
    @ghs_symbol = GhsSymbol.new
  end

  # GET /ghs_symbols/1/edit
  def edit
  end

  # POST /ghs_symbols
  # POST /ghs_symbols.json
  def create
    @ghs_symbol = GhsSymbol.new(ghs_symbol_params)

    respond_to do |format|
      if @ghs_symbol.save
        format.html { redirect_to @ghs_symbol, notice: 'Ghs symbol was successfully created.' }
        format.json { render :show, status: :created, location: @ghs_symbol }
      else
        format.html { render :new }
        format.json { render json: @ghs_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ghs_symbols/1
  # PATCH/PUT /ghs_symbols/1.json
  def update
    respond_to do |format|
      if @ghs_symbol.update(ghs_symbol_params)
        format.html { redirect_to @ghs_symbol, notice: 'Ghs symbol was successfully updated.' }
        format.json { render :show, status: :ok, location: @ghs_symbol }
      else
        format.html { render :edit }
        format.json { render json: @ghs_symbol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ghs_symbols/1
  # DELETE /ghs_symbols/1.json
  def destroy
    @ghs_symbol.destroy
    respond_to do |format|
      format.html { redirect_to ghs_symbols_url, notice: 'Ghs symbol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ghs_symbol
      @ghs_symbol = GhsSymbol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ghs_symbol_params
      params.require(:ghs_symbol).permit(:title, :code, :description, :handling, :image)
    end
end

class PphrasesController < ApplicationController
  before_action :set_pphrase, only: [:show, :edit, :update, :destroy]

  # GET /pphrases
  # GET /pphrases.json
  def index
    @pphrases = Pphrase.all
  end

  # GET /pphrases/1
  # GET /pphrases/1.json
  def show
  end

  # GET /pphrases/new
  def new
    @pphrase = Pphrase.new
  end

  # GET /pphrases/1/edit
  def edit
  end

  # POST /pphrases
  # POST /pphrases.json
  def create
    @pphrase = Pphrase.new(pphrase_params)

    respond_to do |format|
      if @pphrase.save
        format.html { redirect_to @pphrase, notice: 'Pphrase was successfully created.' }
        format.json { render :show, status: :created, location: @pphrase }
      else
        format.html { render :new }
        format.json { render json: @pphrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pphrases/1
  # PATCH/PUT /pphrases/1.json
  def update
    respond_to do |format|
      if @pphrase.update(pphrase_params)
        format.html { redirect_to @pphrase, notice: 'Pphrase was successfully updated.' }
        format.json { render :show, status: :ok, location: @pphrase }
      else
        format.html { render :edit }
        format.json { render json: @pphrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pphrases/1
  # DELETE /pphrases/1.json
  def destroy
    @pphrase.destroy
    respond_to do |format|
      format.html { redirect_to pphrases_url, notice: 'Pphrase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pphrase
      @pphrase = Pphrase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pphrase_params
      params.fetch(:pphrase, {})
    end
end

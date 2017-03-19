class RphrasesController < ApplicationController
  before_action :set_rphrase, only: [:show, :edit, :update, :destroy]

  # GET /rphrases
  # GET /rphrases.json
  def index
    @rphrases = Rphrase.all
  end

  # GET /rphrases/1
  # GET /rphrases/1.json
  def show
  end

  # GET /rphrases/new
  def new
    @rphrase = Rphrase.new
  end

  # GET /rphrases/1/edit
  def edit
  end

  # POST /rphrases
  # POST /rphrases.json
  def create
    @rphrase = Rphrase.new(rphrase_params)

    respond_to do |format|
      if @rphrase.save
        format.html { redirect_to @rphrase, notice: 'Rphrase was successfully created.' }
        format.json { render :show, status: :created, location: @rphrase }
      else
        format.html { render :new }
        format.json { render json: @rphrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rphrases/1
  # PATCH/PUT /rphrases/1.json
  def update
    respond_to do |format|
      if @rphrase.update(rphrase_params)
        format.html { redirect_to @rphrase, notice: 'Rphrase was successfully updated.' }
        format.json { render :show, status: :ok, location: @rphrase }
      else
        format.html { render :edit }
        format.json { render json: @rphrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rphrases/1
  # DELETE /rphrases/1.json
  def destroy
    @rphrase.destroy
    respond_to do |format|
      format.html { redirect_to rphrases_url, notice: 'Rphrase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rphrase
      @rphrase = Rphrase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rphrase_params
      params.fetch(:rphrase, {})
    end
end

class HphrasesController < ApplicationController
  before_action :set_hphrase, only: [:show, :edit, :update, :destroy]

  # GET /hphrases
  # GET /hphrases.json
  def index
    @hphrases = Hphrase.all
  end

  # GET /hphrases/1
  # GET /hphrases/1.json
  def show
  end

  # GET /hphrases/new
  def new
    @hphrase = Hphrase.new
  end

  # GET /hphrases/1/edit
  def edit
  end

  # POST /hphrases
  # POST /hphrases.json
  def create
    @hphrase = Hphrase.new(hphrase_params)

    respond_to do |format|
      if @hphrase.save
        format.html { redirect_to @hphrase, notice: 'Hphrase was successfully created.' }
        format.json { render :show, status: :created, location: @hphrase }
      else
        format.html { render :new }
        format.json { render json: @hphrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hphrases/1
  # PATCH/PUT /hphrases/1.json
  def update
    respond_to do |format|
      if @hphrase.update(hphrase_params)
        format.html { redirect_to @hphrase, notice: 'Hphrase was successfully updated.' }
        format.json { render :show, status: :ok, location: @hphrase }
      else
        format.html { render :edit }
        format.json { render json: @hphrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hphrases/1
  # DELETE /hphrases/1.json
  def destroy
    @hphrase.destroy
    respond_to do |format|
      format.html { redirect_to hphrases_url, notice: 'Hphrase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hphrase
      @hphrase = Hphrase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hphrase_params
      params.fetch(:hphrase, {})
    end
end

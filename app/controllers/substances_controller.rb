class SubstancesController < ApplicationController
  before_action :find_substance, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @substance = if params[:term]
      Substance.where('title LIKE ?', "%#{params[:term]}%").order('id DESC')
    else
      Substance.all.order("date DESC")
    end
  end

  def show
  end

  def new
    @substance = current_user.substances.build
  end

  def create
    @substance = current_user.substances.build(substance_params)

    if @substance.save
      redirect_to root_path, notice: "Successfully created new Substance"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @substance = Substance.update(params[:id], substance_params)
    redirect_to root_path, notice: "Successfully updated Substance"
  end

  def destroy
    @substance.destroy
    redirect_to root_path, notice: "Successfully deleted Substance"
  end

private

  def find_substance
    @substance = Substance.find(params[:id])
  end

  def substance_params
    params.require(:substance).permit(:title, :company_id, :date, :application, :protection_level, :signalword, :inhalation, hphrase_ids:[], pphrase_ids:[], rphrase_ids:[])
  end

end

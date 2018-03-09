class SubstancesController < ApplicationController
  before_action :find_substance, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  after_action :verify_authorized, only: [:create, :update, :destroy]

  def index
    @substance = if params[:term]
      Substance.where('title LIKE ?', "%#{params[:term]}%").order('id DESC')
    else
      Substance.all.order("date DESC")
    end
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do

      pdf = Prawn::Document.new
      # The document grid on Prawn is just a table-like structure with a defined number of rows and columns.
      # There are some helpers to create boxes of content based on the grid coordinates.
      # define_grid accepts the following options:
      #  :rows          - Number of rows in the grid
      #  :columns       - Number of columns in the grid
      #  :gutter        - Padding of each cell
      #  :row_gutter    - Padding between rows
      #  :column_gutter - Padding between columns

      pdf.define_grid(:columns => 4, :rows => 12, :gutter => 5)
      pdf.font_size = 12
      # pdf.stroke_axis
      # pdf.grid.show_all

      pdf.grid([0, 0], [0, 2]).bounding_box do
        pdf.text @substance.title, :size => 24
        pdf.text @substance.company.name, :size => 20
      end

      pdf.grid([1, 0], [1, 2]).bounding_box do
        pdf.text @substance.application
      end


      number = @substance.hazard_symbols.count
      x_position = 500 - ((number - 1) * 45)
      @substance.hazard_symbols.each do |hazard_symbol|
        pdf.bounding_box([x_position, 660], width: 40) do
          pdf.svg IO.read("#{Rails.root}/app/assets/images/hazard_img/" + hazard_symbol.image), width: 40, hight: 40
          pdf.move_down 2
          pdf.text hazard_symbol.code, :align => :center
          x_position = x_position + 45
        end
      end

      number = @substance.ghs_symbols.count
      x_position = 490 - ((number - 1) * 55)
      @substance.ghs_symbols.each do |ghs_symbol|
        pdf.bounding_box([x_position, 600], width: 50) do
          pdf.svg IO.read("#{Rails.root}/app/assets/images/ghs_img/" + ghs_symbol.image), width: 50, hight: 50
          x_position = x_position + 55
        end
      end

      pdf.grid([2, 0], [2, 2]).bounding_box do
        pdf.text "R-Sätze:"
        pdf.move_down 2
        if @substance.rphrases.empty?
          pdf.text "-"
        else
          pdf.text @substance.rphrases.collect {|rphrase| rphrase.title}.join(', ')
        end
      end

      pdf.grid([3, 0], [3, 2]).bounding_box do
        pdf.text "H-Sätze:"
        pdf.move_down 2
        if @substance.hphrases.empty?
          pdf.text "-"
        else
          pdf.text @substance.hphrases.collect {|hphrase| hphrase.title}.join(', ')
        end

      end

      pdf.grid([4, 0], [4, 2]).bounding_box do
        pdf.text "P-Sätze:"
        pdf.move_down 2
          if @substance.pphrases.empty?
            pdf.text "-"
          else
            pdf.text @substance.pphrases.collect {|pphrase| pphrase.title}.join(', ')
          end
      end

      # Sends the PDF as inline document with name x.pdf
      send_data pdf.render, :filename => "x.pdf", :type => "application/pdf", :disposition => 'inline'
      end
    end
  end

  def new
    @substance = current_user.substances.build
  end

  def create
    authorize Substance
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
    authorize @substance
    @substance = Substance.update(params[:id], substance_params)
    redirect_to root_path, notice: "Successfully updated Substance"
  end

  def destroy
    authorize @substance
    @substance.destroy
    redirect_to root_path, notice: "Successfully deleted Substance"
  end

private

  def find_substance
    @substance = Substance.find(params[:id])
  end

  def substance_params
    params.require(:substance).permit(:title, :company_id, :date, :application, :protectionlevel, :signalword, :unnumber, :hazardcode, :classificationcode, :packinggroup, :transportcategory, :qmax, :inhalation, :dermale, :datasheet, hphrase_ids:[], pphrase_ids:[], rphrase_ids:[], hazard_symbol_ids:[], ghs_symbol_ids:[])
  end
end

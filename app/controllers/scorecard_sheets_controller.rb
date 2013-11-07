class ScorecardSheetsController < ApplicationController
  before_action :set_scorecard_sheet, only: [:show, :edit, :update, :destroy]

  # GET /scorecard_sheets
  # GET /scorecard_sheets.json
  def index
    @scorecard_sheets = ScorecardSheet.all
  end

  # GET /scorecard_sheets/1
  # GET /scorecard_sheets/1.json
  def show
  end

  # GET /scorecard_sheets/new
  def new
    @scorecard_sheet = ScorecardSheet.new
  end

  # GET /scorecard_sheets/1/edit
  def edit
  end

  # POST /scorecard_sheets
  # POST /scorecard_sheets.json
  def create
    @scorecard_sheet = ScorecardSheet.new(scorecard_sheet_params)

    respond_to do |format|
      if @scorecard_sheet.save
        format.html { redirect_to @scorecard_sheet, notice: 'Scorecard sheet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @scorecard_sheet }
      else
        format.html { render action: 'new' }
        format.json { render json: @scorecard_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scorecard_sheets/1
  # PATCH/PUT /scorecard_sheets/1.json
  def update
    respond_to do |format|
      if @scorecard_sheet.update(scorecard_sheet_params)
        format.html { redirect_to @scorecard_sheet, notice: 'Scorecard sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @scorecard_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scorecard_sheets/1
  # DELETE /scorecard_sheets/1.json
  def destroy
    @scorecard_sheet.destroy
    respond_to do |format|
      format.html { redirect_to scorecard_sheets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scorecard_sheet
      @scorecard_sheet = ScorecardSheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scorecard_sheet_params
      params.require(:scorecard_sheet).permit(:total, :student_id)
    end
end

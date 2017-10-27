class CompetencyUnitsController < ApplicationController
  before_action :set_competency_unit, only: [:show, :edit, :update, :destroy]

  # GET /competency_units
  # GET /competency_units.json
  def index
    @competency_units = CompetencyUnit.all
  end

  # GET /competency_units/1
  # GET /competency_units/1.json
  def show
  end

  # GET /competency_units/new
  def new
    @competency_unit = CompetencyUnit.new
  end

  # GET /competency_units/1/edit
  def edit
  end

  # POST /competency_units
  # POST /competency_units.json
  def create
    @competency_unit = CompetencyUnit.new(competency_unit_params)

    respond_to do |format|
      if @competency_unit.save
        format.html { redirect_to @competency_unit, notice: 'Competency unit was successfully created.' }
        format.json { render :show, status: :created, location: @competency_unit }
      else
        format.html { render :new }
        format.json { render json: @competency_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competency_units/1
  # PATCH/PUT /competency_units/1.json
  def update
    respond_to do |format|
      if @competency_unit.update(competency_unit_params)
        format.html { redirect_to @competency_unit, notice: 'Competency unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @competency_unit }
      else
        format.html { render :edit }
        format.json { render json: @competency_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competency_units/1
  # DELETE /competency_units/1.json
  def destroy
    @competency_unit.destroy
    respond_to do |format|
      format.html { redirect_to competency_units_url, notice: 'Competency unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competency_unit
      @competency_unit = CompetencyUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competency_unit_params
      params.fetch(:competency_unit, {})
    end
end

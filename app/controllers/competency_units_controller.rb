class CompetencyUnitsController < ApplicationController
  before_action :set_certification_scheme, only: %i[new create]
  before_action :set_competency_unit, only: %i[edit update destroy]

  # GET /certification_schemes/1/competency_units/new
  def new
    @competency_unit = CompetencyUnit.new
  end

  # GET /certification_schemes/1/competency_units/1/edit
  def edit; end

  # POST /certification_schemes/1/competency_units
  # POST /certification_schemes/1/competency_units.json
  def create
    @competency_unit = CompetencyUnit.new(competency_unit_params)
    @competency_unit.display_order = @certification_scheme.competency_units.count + 1

    respond_to do |format|
      if @competency_unit.save
        format.html { redirect_to certification_scheme_path(@competency_unit.certification_scheme), notice: 'Competency unit was successfully created.' }
        format.json { render :show, status: :created, location: @competency_unit }
      else
        format.html { render :new }
        format.json { render json: @competency_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certification_schemes/1/competency_units/1
  # PATCH/PUT /certification_schemes/1/competency_units/1.json
  def update
    respond_to do |format|
      if @competency_unit.update(competency_unit_params)
        format.html { redirect_to certification_scheme_path(@competency_unit.certification_scheme), notice: 'Competency unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @competency_unit }
      else
        format.html { render :edit }
        format.json { render json: @competency_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certification_schemes/1/competency_units/1
  # DELETE /certification_schemes/1/competency_units/1.json
  def destroy
    @competency_unit.destroy
    respond_to do |format|
      format.html { redirect_to certification_scheme_path(@competency_unit.certification_scheme), notice: 'Competency unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_certification_scheme
    @certification_scheme = CertificationScheme.find(params[:certification_scheme_id])
  end

  def set_competency_unit
    @competency_unit = CompetencyUnit.find(params[:id])
    @certification_scheme = @competency_unit.certification_scheme
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def competency_unit_params
    params.fetch(:competency_unit, {}).permit(:code, :name, :certification_scheme_id, :display_order)
  end
end

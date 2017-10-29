class CertificationSchemesController < ApplicationController
  before_action :set_certification_scheme, only: %i[edit update destroy]
  before_action :set_certification_scheme_with_competency_units, only: %i[show]

  # GET /certification_schemes
  # GET /certification_schemes.json
  def index
    @certification_schemes = CertificationScheme.order(:code)
  end

  # GET /certification_schemes/1
  # GET /certification_schemes/1.json
  def show; end

  # GET /certification_schemes/new
  def new
    @certification_scheme = CertificationScheme.new
  end

  # GET /certification_schemes/1/edit
  def edit; end

  # POST /certification_schemes
  # POST /certification_schemes.json
  def create
    @certification_scheme = CertificationScheme.new(certification_scheme_params)

    respond_to do |format|
      if @certification_scheme.save
        format.html { redirect_to @certification_scheme, notice: 'Certification scheme was successfully created.' }
        format.json { render :show, status: :created, location: @certification_scheme }
      else
        format.html { render :new }
        format.json { render json: @certification_scheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certification_schemes/1
  # PATCH/PUT /certification_schemes/1.json
  def update
    respond_to do |format|
      if @certification_scheme.update(certification_scheme_params)
        format.html { redirect_to @certification_scheme, notice: 'Certification scheme was successfully updated.' }
        format.json { render :show, status: :ok, location: @certification_scheme }
      else
        format.html { render :edit }
        format.json { render json: @certification_scheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certification_schemes/1
  # DELETE /certification_schemes/1.json
  def destroy
    @certification_scheme.destroy
    respond_to do |format|
      format.html { redirect_to certification_schemes_url, notice: 'Certification scheme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_certification_scheme
    @certification_scheme = CertificationScheme.find(params[:id])
  end

  def set_certification_scheme_with_competency_units
    @certification_scheme = CertificationScheme.includes(:competency_units).find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def certification_scheme_params
    params.fetch(:certification_scheme, {})
  end
end

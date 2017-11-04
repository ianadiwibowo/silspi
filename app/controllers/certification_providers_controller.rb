class CertificationProvidersController < ApplicationController
  before_action :set_certification_provider, only: [:show, :edit, :update, :destroy]

  # GET /certification_providers
  # GET /certification_providers.json
  def index
    @certification_providers = CertificationProvider.all
  end

  # GET /certification_providers/1
  # GET /certification_providers/1.json
  def show
  end

  # GET /certification_providers/new
  def new
    @certification_provider = CertificationProvider.new
  end

  # GET /certification_providers/1/edit
  def edit
  end

  # POST /certification_providers
  # POST /certification_providers.json
  def create
    @certification_provider = CertificationProvider.new(certification_provider_params)

    respond_to do |format|
      if @certification_provider.save
        format.html { redirect_to @certification_provider, notice: 'Certification provider was successfully created.' }
        format.json { render :show, status: :created, location: @certification_provider }
      else
        format.html { render :new }
        format.json { render json: @certification_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certification_providers/1
  # PATCH/PUT /certification_providers/1.json
  def update
    respond_to do |format|
      if @certification_provider.update(certification_provider_params)
        format.html { redirect_to @certification_provider, notice: 'Certification provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @certification_provider }
      else
        format.html { render :edit }
        format.json { render json: @certification_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certification_providers/1
  # DELETE /certification_providers/1.json
  def destroy
    @certification_provider.destroy
    respond_to do |format|
      format.html { redirect_to certification_providers_url, notice: 'Certification provider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certification_provider
      @certification_provider = CertificationProvider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certification_provider_params
      params.fetch(:certification_provider, {})
    end
end

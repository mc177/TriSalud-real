class ClinicasController < ApplicationController
  before_action :set_clinica, only: [:show, :edit, :update, :destroy]

  # GET /clinicas
  # GET /clinicas.json
  def index
    @clinicas = Clinica.where(:estatus => "A")
  end

  # GET /clinicas/1
  # GET /clinicas/1.json
  def show
  end

  # GET /clinicas/new
  def new
    @clinica = Clinica.new
    @clinica.user = User.new
  end

  # GET /clinicas/1/edit
  def edit
  end

  # POST /clinicas
  # POST /clinicas.json
  def create
    @clinica = Clinica.new(clinica_params)
    @clinica.estatus = "A" 
    respond_to do |format|
      if @clinica.save
        format.html { redirect_to @clinica, notice: 'La clinica fue registrada exitosamente.' }
        format.json { render :show, status: :created, location: @clinica }
      else
        format.html { render :new }
        format.json { render json: @clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinicas/1
  # PATCH/PUT /clinicas/1.json
  def update
    respond_to do |format|
      if @clinica.update(clinica_params)
        format.html { redirect_to @clinica, notice: 'Los datos de la clinica fueron modificados exitosamente.' }
        format.json { render :show, status: :ok, location: @clinica }
      else
        format.html { render :edit }
        format.json { render json: @clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinicas/1
  # DELETE /clinicas/1.json
  def destroy
    @clinica = Clinica.find(params[:id])
    @clinica.estatus = "I"
      @clinica.save 
      respond_to do |format|
      format.html { redirect_to clinicas_url, notice: 'La Clínica ha sido eliminada exitosamente' }
      format.json { head :no_content }
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinica
      @clinica = Clinica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinica_params
      params.require(:clinica).permit(:user_id, :rif, :nombre, :direccion, :estatus, user_attributes: [:email, :password, :password_confirmation, :rol_id])
    end
end

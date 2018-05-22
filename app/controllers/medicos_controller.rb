class MedicosController < ApplicationController
  before_action :set_medico, only: [:show, :edit, :update, :destroy]

  # GET /medicos
  # GET /medicos.json
  def index
    @medicos = Medico.where(:estatus => "A")
  end

  # GET /medicos/1
  # GET /medicos/1.json
  def show
  end

  # GET /medicos/new
  def new
    @medico = Medico.new
    @medico.user = User.new
    @especialidades = Especialidad.where(:estatus => "A")
    @clinicas = Clinica.where(:estatus => "A")
  end

  # GET /medicos/1/edit
  def edit
  end

  # POST /medicos
  # POST /medicos.json
  def create
    @medico = Medico.new(medico_params)
    @medico.clinicas = params[:clinicas]
    @medico.estatus = "A" 
    respond_to do |format|
      if @medico.save
        format.html { redirect_to @medico, notice: 'El médico fue registrado exitosamente.' }
        format.json { render :show, status: :created, location: @medico }
      else
        format.html { render :new }
        format.json { render json: @medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicos/1
  # PATCH/PUT /medicos/1.json
  def update
    respond_to do |format|
      if @medico.update(medico_params)
        format.html { redirect_to @medico, notice: 'Los datos del médico han sido modificado exitosamente.' }
        format.json { render :show, status: :ok, location: @medico }
      else
        format.html { render :edit }
        format.json { render json: @medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicos/1
  # DELETE /medicos/1.json
  def destroy
    @medico = Medico.find(params[:id])
    @medico.estatus = "I"      
    @medico.save
    respond_to do |format|
      format.html { redirect_to medicos_url, notice: 'El médico ha sido eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medico
      @medico = Medico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medico_params
      params.require(:medico).permit(:user_id, :especialidad_id, :nombres, :apellidos, :direccion, :telefono, :edad, :sexo, :estatus, :clinicas, user_attributes: [:email, :password, :password_confirmation, :rol_id])
    end
end

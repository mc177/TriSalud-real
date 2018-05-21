class PacientesController < ApplicationController
  before_action :set_paciente, only: [:show, :edit, :update, :destroy]

  # GET /pacientes
  # GET /pacientes.json
  def index
    @pacientes = Paciente.where(:estatus => "A")

  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
    @paciente.user = User.new
  end

  # GET /pacientes/1/edit
  def edit
  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @paciente = Paciente.new(paciente_params)
    @paciente.estatus = "A" 
    respond_to do |format|
      if @paciente.save
        format.html { redirect_to @paciente, notice: 'El paciente fue registrado exitosamente.' }
        format.json { render :show, status: :created, location: @paciente }
      else
        format.html { render :new }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1
  # PATCH/PUT /pacientes/1.json
  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html { redirect_to @paciente, notice: 'Los datos del paciente han sido modificado con éxito' }
        format.json { render :show, status: :ok, location: @paciente }
      else
        format.html { render :edit }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.json
  def destroy
    @paciente = Paciente.find(params[:id])
    @paciente.estatus = 'I'      
    @paciente.save
    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: 'El paciente ha sido eliminado con éxito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_params
      params.require(:paciente).permit(:user_id, :ced_paciente, :nombres, :apellidos, :nombres_responsable, :apellidos_responsable, :telefono_responsable, :direccion, :telefono, :edad, :sexo, :estatus, user_attributes: [:email, :password, :password_confirmation, :rol_id])
    end
end

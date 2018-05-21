class HistorialPacientesController < ApplicationController
  before_action :set_historial_paciente, only: [:show, :edit, :update, :destroy]

  # GET /historial_pacientes
  # GET /historial_pacientes.json
  def index
    @historial_pacientes = HistorialPaciente.where(:estatus => "A")
  end

  # GET /historial_pacientes/1
  # GET /historial_pacientes/1.json
  def show
  end

  # GET /historial_pacientes/new
  def new
    @historial_paciente = HistorialPaciente.new
  end

  # GET /historial_pacientes/1/edit
  def edit
  end

  # POST /historial_pacientes
  # POST /historial_pacientes.json
  def create
    @historial_paciente = HistorialPaciente.new(historial_paciente_params)
    @historial_paciente.estatus = "A"
    respond_to do |format|
      if @historial_paciente.save
        format.html { redirect_to @historial_paciente, notice: 'El Historial del paciente fue registrado exitosamente.' }
        format.json { render :show, status: :created, location: @historial_paciente }
      else
        format.html { render :new }
        format.json { render json: @historial_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historial_pacientes/1
  # PATCH/PUT /historial_pacientes/1.json
  def update
    respond_to do |format|
      if @historial_paciente.update(historial_paciente_params)
        format.html { redirect_to @historial_paciente, notice: 'Los datos del Historial del paciente han sido modificados exitosamente.' }
        format.json { render :show, status: :ok, location: @historial_paciente }
      else
        format.html { render :edit }
        format.json { render json: @historial_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historial_pacientes/1
  # DELETE /historial_pacientes/1.json
  def destroy
    @historial_paciente = HistorialPaciente.find(params[:id])
    @historial_paciente.estatus = 'I'      
    @historial_paciente.save
    respond_to do |format|
      format.html { redirect_to historial_pacientes_url, notice: 'El historial del paciente ha sido eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historial_paciente
      @historial_paciente = HistorialPaciente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historial_paciente_params
      params.require(:historial_paciente).permit(:paciente_id, :prob_cardio, :prob_respira, :diabetes, :alergias, :diab_pm, :sobrepso_pm, :hipertension_pm, :epilepsia_pm, :alcohol, :deportes, :tabaco, :drogas, :estatus)
    end
end

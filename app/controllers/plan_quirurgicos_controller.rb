class PlanQuirurgicosController < ApplicationController
  before_action :set_plan_quirurgico, only: [:show, :edit, :update, :destroy]

  # GET /plan_quirurgicos
  # GET /plan_quirurgicos.json
  def index
    @plan_quirurgicos = PlanQuirurgico.where(:estatus => "En Proceso")
  end

  # GET /plan_quirurgicos/1
  # GET /plan_quirurgicos/1.json
  def show
  end

  # GET /plan_quirurgicos/new
  def new
    @plan_quirurgico = PlanQuirurgico.new
    @servicios = Servicio.where(:estatus => "A")
  end

  # GET /plan_quirurgicos/1/edit
  def edit
  end

  # POST /plan_quirurgicos
  # POST /plan_quirurgicos.json
  def create
    @plan_quirurgico = PlanQuirurgico.new(plan_quirurgico_params)
    @plan_quirurgico.servicios = params[:servicios]
    @plan_quirurgico.estatus = "En Proceso"
    puts params
    puts @plan_quirurgico.examen 
    respond_to do |format|
      if @plan_quirurgico.save
        format.html { redirect_to @plan_quirurgico, notice: 'El plan quirurgico fue registrado exitosamente.' }
        format.json { render :show, status: :created, location: @plan_quirurgico }
      else
        format.html { render :new }
        format.json { render json: @plan_quirurgico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_quirurgicos/1
  # PATCH/PUT /plan_quirurgicos/1.json
  def update
    respond_to do |format|
      if @plan_quirurgico.update(plan_quirurgico_params)
        format.html { redirect_to @plan_quirurgico, notice: 'Los datos del Plan quirurgico fueron modificados exitosamente' }
        format.json { render :show, status: :ok, location: @plan_quirurgico }
      else
        format.html { render :edit }
        format.json { render json: @plan_quirurgico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_quirurgicos/1
  # DELETE /plan_quirurgicos/1.json
  def destroy
    @plan_quirurgicos = PlanQuirurgico.find(params[:id])
    @plan_quirurgicos.estatus = "I"
    @plan_quirurgicos.save 
    respond_to do |format|
      format.html { redirect_to plan_quirurgicos_url, notice: 'El Plan quirurgico fue eliminado exitosamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_quirurgico
      @plan_quirurgico = PlanQuirurgico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_quirurgico_params
      params.require(:plan_quirurgico).permit(:medico_id, :paciente_id, :fecha_consulta, :descp_consulta, :fecha_pq, :presupuesto, :examen, :estatus, :servicios)
    end
end

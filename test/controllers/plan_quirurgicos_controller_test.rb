require 'test_helper'

class PlanQuirurgicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan_quirurgico = plan_quirurgicos(:one)
  end

  test "should get index" do
    get plan_quirurgicos_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_quirurgico_url
    assert_response :success
  end

  test "should create plan_quirurgico" do
    assert_difference('PlanQuirurgico.count') do
      post plan_quirurgicos_url, params: { plan_quirurgico: { descp_consulta: @plan_quirurgico.descp_consulta, estatus: @plan_quirurgico.estatus, examen: @plan_quirurgico.examen, fecha_consulta: @plan_quirurgico.fecha_consulta, fecha_pq: @plan_quirurgico.fecha_pq, medico_id: @plan_quirurgico.medico_id, paciente_id: @plan_quirurgico.paciente_id, presupuesto: @plan_quirurgico.presupuesto } }
    end

    assert_redirected_to plan_quirurgico_url(PlanQuirurgico.last)
  end

  test "should show plan_quirurgico" do
    get plan_quirurgico_url(@plan_quirurgico)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_quirurgico_url(@plan_quirurgico)
    assert_response :success
  end

  test "should update plan_quirurgico" do
    patch plan_quirurgico_url(@plan_quirurgico), params: { plan_quirurgico: { descp_consulta: @plan_quirurgico.descp_consulta, estatus: @plan_quirurgico.estatus, examen: @plan_quirurgico.examen, fecha_consulta: @plan_quirurgico.fecha_consulta, fecha_pq: @plan_quirurgico.fecha_pq, medico_id: @plan_quirurgico.medico_id, paciente_id: @plan_quirurgico.paciente_id, presupuesto: @plan_quirurgico.presupuesto } }
    assert_redirected_to plan_quirurgico_url(@plan_quirurgico)
  end

  test "should destroy plan_quirurgico" do
    assert_difference('PlanQuirurgico.count', -1) do
      delete plan_quirurgico_url(@plan_quirurgico)
    end

    assert_redirected_to plan_quirurgicos_url
  end
end

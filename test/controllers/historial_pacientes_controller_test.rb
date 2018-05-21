require 'test_helper'

class HistorialPacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historial_paciente = historial_pacientes(:one)
  end

  test "should get index" do
    get historial_pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_historial_paciente_url
    assert_response :success
  end

  test "should create historial_paciente" do
    assert_difference('HistorialPaciente.count') do
      post historial_pacientes_url, params: { historial_paciente: { alcohol: @historial_paciente.alcohol, alergias: @historial_paciente.alergias, deportes: @historial_paciente.deportes, diab_pm: @historial_paciente.diab_pm, diabetes: @historial_paciente.diabetes, drogas: @historial_paciente.drogas, epilepsia_pm: @historial_paciente.epilepsia_pm, estatus: @historial_paciente.estatus, hipertension_pm: @historial_paciente.hipertension_pm, paciente_id: @historial_paciente.paciente_id, prob_cardio: @historial_paciente.prob_cardio, prob_respira: @historial_paciente.prob_respira, sobrepso_pm: @historial_paciente.sobrepso_pm, tabaco: @historial_paciente.tabaco } }
    end

    assert_redirected_to historial_paciente_url(HistorialPaciente.last)
  end

  test "should show historial_paciente" do
    get historial_paciente_url(@historial_paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_historial_paciente_url(@historial_paciente)
    assert_response :success
  end

  test "should update historial_paciente" do
    patch historial_paciente_url(@historial_paciente), params: { historial_paciente: { alcohol: @historial_paciente.alcohol, alergias: @historial_paciente.alergias, deportes: @historial_paciente.deportes, diab_pm: @historial_paciente.diab_pm, diabetes: @historial_paciente.diabetes, drogas: @historial_paciente.drogas, epilepsia_pm: @historial_paciente.epilepsia_pm, estatus: @historial_paciente.estatus, hipertension_pm: @historial_paciente.hipertension_pm, paciente_id: @historial_paciente.paciente_id, prob_cardio: @historial_paciente.prob_cardio, prob_respira: @historial_paciente.prob_respira, sobrepso_pm: @historial_paciente.sobrepso_pm, tabaco: @historial_paciente.tabaco } }
    assert_redirected_to historial_paciente_url(@historial_paciente)
  end

  test "should destroy historial_paciente" do
    assert_difference('HistorialPaciente.count', -1) do
      delete historial_paciente_url(@historial_paciente)
    end

    assert_redirected_to historial_pacientes_url
  end
end

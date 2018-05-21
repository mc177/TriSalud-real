require 'test_helper'

class MedicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medico = medicos(:one)
  end

  test "should get index" do
    get medicos_url
    assert_response :success
  end

  test "should get new" do
    get new_medico_url
    assert_response :success
  end

  test "should create medico" do
    assert_difference('Medico.count') do
      post medicos_url, params: { medico: { apellidos: @medico.apellidos, direccion: @medico.direccion, edad: @medico.edad, especialidad_id: @medico.especialidad_id, estatus: @medico.estatus, nombres: @medico.nombres, sexo: @medico.sexo, telefono: @medico.telefono, user_id: @medico.user_id } }
    end

    assert_redirected_to medico_url(Medico.last)
  end

  test "should show medico" do
    get medico_url(@medico)
    assert_response :success
  end

  test "should get edit" do
    get edit_medico_url(@medico)
    assert_response :success
  end

  test "should update medico" do
    patch medico_url(@medico), params: { medico: { apellidos: @medico.apellidos, direccion: @medico.direccion, edad: @medico.edad, especialidad_id: @medico.especialidad_id, estatus: @medico.estatus, nombres: @medico.nombres, sexo: @medico.sexo, telefono: @medico.telefono, user_id: @medico.user_id } }
    assert_redirected_to medico_url(@medico)
  end

  test "should destroy medico" do
    assert_difference('Medico.count', -1) do
      delete medico_url(@medico)
    end

    assert_redirected_to medicos_url
  end
end

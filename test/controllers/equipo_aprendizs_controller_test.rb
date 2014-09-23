require 'test_helper'

class EquipoAprendizsControllerTest < ActionController::TestCase
  setup do
    @equipo_aprendiz = equipo_aprendizs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipo_aprendizs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipo_aprendiz" do
    assert_difference('EquipoAprendiz.count') do
      post :create, equipo_aprendiz: { aprendiz_id: @equipo_aprendiz.aprendiz_id, equipo_id: @equipo_aprendiz.equipo_id }
    end

    assert_redirected_to equipo_aprendiz_path(assigns(:equipo_aprendiz))
  end

  test "should show equipo_aprendiz" do
    get :show, id: @equipo_aprendiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipo_aprendiz
    assert_response :success
  end

  test "should update equipo_aprendiz" do
    patch :update, id: @equipo_aprendiz, equipo_aprendiz: { aprendiz_id: @equipo_aprendiz.aprendiz_id, equipo_id: @equipo_aprendiz.equipo_id }
    assert_redirected_to equipo_aprendiz_path(assigns(:equipo_aprendiz))
  end

  test "should destroy equipo_aprendiz" do
    assert_difference('EquipoAprendiz.count', -1) do
      delete :destroy, id: @equipo_aprendiz
    end

    assert_redirected_to equipo_aprendizs_path
  end
end

require 'test_helper'

class SolucionsControllerTest < ActionController::TestCase
  setup do
    @solucion = solucions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solucions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solucion" do
    assert_difference('Solucion.count') do
      post :create, solucion: { questionario_id: @solucion.questionario_id, respuesta: @solucion.respuesta }
    end

    assert_redirected_to solucion_path(assigns(:solucion))
  end

  test "should show solucion" do
    get :show, id: @solucion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solucion
    assert_response :success
  end

  test "should update solucion" do
    patch :update, id: @solucion, solucion: { questionario_id: @solucion.questionario_id, respuesta: @solucion.respuesta }
    assert_redirected_to solucion_path(assigns(:solucion))
  end

  test "should destroy solucion" do
    assert_difference('Solucion.count', -1) do
      delete :destroy, id: @solucion
    end

    assert_redirected_to solucions_path
  end
end

require 'test_helper'

class ConsumosControllerTest < ActionController::TestCase
  setup do
    @consumo = consumos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consumos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consumo" do
    assert_difference('Consumo.count') do
      post :create, :consumo => { :quant => @consumo.quant }
    end

    assert_redirected_to consumo_path(assigns(:consumo))
  end

  test "should show consumo" do
    get :show, :id => @consumo
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @consumo
    assert_response :success
  end

  test "should update consumo" do
    put :update, :id => @consumo, :consumo => { :quant => @consumo.quant }
    assert_redirected_to consumo_path(assigns(:consumo))
  end

  test "should destroy consumo" do
    assert_difference('Consumo.count', -1) do
      delete :destroy, :id => @consumo
    end

    assert_redirected_to consumos_path
  end
end

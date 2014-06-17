require 'test_helper'

class ThermostatModelsControllerTest < ActionController::TestCase
  setup do
    @thermostat_model = thermostat_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermostat_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermostat_model" do
    assert_difference('ThermostatModel.count') do
      post :create, thermostat_model: { name: @thermostat_model.name }
    end

    assert_redirected_to thermostat_model_path(assigns(:thermostat_model))
  end

  test "should show thermostat_model" do
    get :show, id: @thermostat_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermostat_model
    assert_response :success
  end

  test "should update thermostat_model" do
    patch :update, id: @thermostat_model, thermostat_model: { name: @thermostat_model.name }
    assert_redirected_to thermostat_model_path(assigns(:thermostat_model))
  end

  test "should destroy thermostat_model" do
    assert_difference('ThermostatModel.count', -1) do
      delete :destroy, id: @thermostat_model
    end

    assert_redirected_to thermostat_models_path
  end
end

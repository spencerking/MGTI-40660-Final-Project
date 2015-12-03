require 'test_helper'

class AptComplexesControllerTest < ActionController::TestCase
  setup do
    @apt_complex = apt_complexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apt_complexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apt_complex" do
    assert_difference('AptComplex.count') do
      post :create, apt_complex: { City_id: @apt_complex.City_id, Company_id: @apt_complex.Company_id, description: @apt_complex.description, floors: @apt_complex.floors, street: @apt_complex.street }
    end

    assert_redirected_to apt_complex_path(assigns(:apt_complex))
  end

  test "should show apt_complex" do
    get :show, id: @apt_complex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apt_complex
    assert_response :success
  end

  test "should update apt_complex" do
    patch :update, id: @apt_complex, apt_complex: { City_id: @apt_complex.City_id, Company_id: @apt_complex.Company_id, description: @apt_complex.description, floors: @apt_complex.floors, street: @apt_complex.street }
    assert_redirected_to apt_complex_path(assigns(:apt_complex))
  end

  test "should destroy apt_complex" do
    assert_difference('AptComplex.count', -1) do
      delete :destroy, id: @apt_complex
    end

    assert_redirected_to apt_complexes_path
  end
end

require 'test_helper'

class FaxesControllerTest < ActionController::TestCase
  setup do
    @fax = faxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fax" do
    assert_difference('Fax.count') do
      post :create, fax: { city: @fax.city, extension: @fax.extension, national: @fax.national, number: @fax.number, type: @fax.type, uuid: @fax.uuid }
    end

    assert_redirected_to fax_path(assigns(:fax))
  end

  test "should show fax" do
    get :show, id: @fax
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fax
    assert_response :success
  end

  test "should update fax" do
    patch :update, id: @fax, fax: { city: @fax.city, extension: @fax.extension, national: @fax.national, number: @fax.number, type: @fax.type, uuid: @fax.uuid }
    assert_redirected_to fax_path(assigns(:fax))
  end

  test "should destroy fax" do
    assert_difference('Fax.count', -1) do
      delete :destroy, id: @fax
    end

    assert_redirected_to faxes_path
  end
end

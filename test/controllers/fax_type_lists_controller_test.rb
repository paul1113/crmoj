require 'test_helper'

class FaxTypeListsControllerTest < ActionController::TestCase
  setup do
    @fax_type_list = fax_type_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fax_type_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fax_type_list" do
    assert_difference('FaxTypeList.count') do
      post :create, fax_type_list: { name: @fax_type_list.name, uuid: @fax_type_list.uuid }
    end

    assert_redirected_to fax_type_list_path(assigns(:fax_type_list))
  end

  test "should show fax_type_list" do
    get :show, id: @fax_type_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fax_type_list
    assert_response :success
  end

  test "should update fax_type_list" do
    patch :update, id: @fax_type_list, fax_type_list: { name: @fax_type_list.name, uuid: @fax_type_list.uuid }
    assert_redirected_to fax_type_list_path(assigns(:fax_type_list))
  end

  test "should destroy fax_type_list" do
    assert_difference('FaxTypeList.count', -1) do
      delete :destroy, id: @fax_type_list
    end

    assert_redirected_to fax_type_lists_path
  end
end

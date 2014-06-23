require 'test_helper'

class AddressTypeListsControllerTest < ActionController::TestCase
  setup do
    @address_type_list = address_type_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:address_type_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address_type_list" do
    assert_difference('AddressTypeList.count') do
      post :create, address_type_list: { name: @address_type_list.name, uuid: @address_type_list.uuid }
    end

    assert_redirected_to address_type_list_path(assigns(:address_type_list))
  end

  test "should show address_type_list" do
    get :show, id: @address_type_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address_type_list
    assert_response :success
  end

  test "should update address_type_list" do
    patch :update, id: @address_type_list, address_type_list: { name: @address_type_list.name, uuid: @address_type_list.uuid }
    assert_redirected_to address_type_list_path(assigns(:address_type_list))
  end

  test "should destroy address_type_list" do
    assert_difference('AddressTypeList.count', -1) do
      delete :destroy, id: @address_type_list
    end

    assert_redirected_to address_type_lists_path
  end
end

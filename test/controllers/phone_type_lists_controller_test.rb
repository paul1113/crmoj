require 'test_helper'

class PhoneTypeListsControllerTest < ActionController::TestCase
  setup do
    @phone_type_list = phone_type_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phone_type_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phone_type_list" do
    assert_difference('PhoneTypeList.count') do
      post :create, phone_type_list: { name: @phone_type_list.name, uuid: @phone_type_list.uuid }
    end

    assert_redirected_to phone_type_list_path(assigns(:phone_type_list))
  end

  test "should show phone_type_list" do
    get :show, id: @phone_type_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phone_type_list
    assert_response :success
  end

  test "should update phone_type_list" do
    patch :update, id: @phone_type_list, phone_type_list: { name: @phone_type_list.name, uuid: @phone_type_list.uuid }
    assert_redirected_to phone_type_list_path(assigns(:phone_type_list))
  end

  test "should destroy phone_type_list" do
    assert_difference('PhoneTypeList.count', -1) do
      delete :destroy, id: @phone_type_list
    end

    assert_redirected_to phone_type_lists_path
  end
end

require 'test_helper'

class MobileTypeListsControllerTest < ActionController::TestCase
  setup do
    @mobile_type_list = mobile_type_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mobile_type_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mobile_type_list" do
    assert_difference('MobileTypeList.count') do
      post :create, mobile_type_list: { name: @mobile_type_list.name, uuid: @mobile_type_list.uuid }
    end

    assert_redirected_to mobile_type_list_path(assigns(:mobile_type_list))
  end

  test "should show mobile_type_list" do
    get :show, id: @mobile_type_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mobile_type_list
    assert_response :success
  end

  test "should update mobile_type_list" do
    patch :update, id: @mobile_type_list, mobile_type_list: { name: @mobile_type_list.name, uuid: @mobile_type_list.uuid }
    assert_redirected_to mobile_type_list_path(assigns(:mobile_type_list))
  end

  test "should destroy mobile_type_list" do
    assert_difference('MobileTypeList.count', -1) do
      delete :destroy, id: @mobile_type_list
    end

    assert_redirected_to mobile_type_lists_path
  end
end

require 'test_helper'

class ImTypeListsControllerTest < ActionController::TestCase
  setup do
    @im_type_list = im_type_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:im_type_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create im_type_list" do
    assert_difference('ImTypeList.count') do
      post :create, im_type_list: { name: @im_type_list.name, uuid: @im_type_list.uuid }
    end

    assert_redirected_to im_type_list_path(assigns(:im_type_list))
  end

  test "should show im_type_list" do
    get :show, id: @im_type_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @im_type_list
    assert_response :success
  end

  test "should update im_type_list" do
    patch :update, id: @im_type_list, im_type_list: { name: @im_type_list.name, uuid: @im_type_list.uuid }
    assert_redirected_to im_type_list_path(assigns(:im_type_list))
  end

  test "should destroy im_type_list" do
    assert_difference('ImTypeList.count', -1) do
      delete :destroy, id: @im_type_list
    end

    assert_redirected_to im_type_lists_path
  end
end

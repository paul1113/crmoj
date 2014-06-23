require 'test_helper'

class EmailTypeListsControllerTest < ActionController::TestCase
  setup do
    @email_type_list = email_type_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:email_type_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create email_type_list" do
    assert_difference('EmailTypeList.count') do
      post :create, email_type_list: { name: @email_type_list.name, uuid: @email_type_list.uuid }
    end

    assert_redirected_to email_type_list_path(assigns(:email_type_list))
  end

  test "should show email_type_list" do
    get :show, id: @email_type_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @email_type_list
    assert_response :success
  end

  test "should update email_type_list" do
    patch :update, id: @email_type_list, email_type_list: { name: @email_type_list.name, uuid: @email_type_list.uuid }
    assert_redirected_to email_type_list_path(assigns(:email_type_list))
  end

  test "should destroy email_type_list" do
    assert_difference('EmailTypeList.count', -1) do
      delete :destroy, id: @email_type_list
    end

    assert_redirected_to email_type_lists_path
  end
end

require 'test_helper'

class DepartmentlistsControllerTest < ActionController::TestCase
  setup do
    @departmentlist = departmentlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:departmentlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create departmentlist" do
    assert_difference('Departmentlist.count') do
      post :create, departmentlist: { name: @departmentlist.name, uuid: @departmentlist.uuid }
    end

    assert_redirected_to departmentlist_path(assigns(:departmentlist))
  end

  test "should show departmentlist" do
    get :show, id: @departmentlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @departmentlist
    assert_response :success
  end

  test "should update departmentlist" do
    patch :update, id: @departmentlist, departmentlist: { name: @departmentlist.name, uuid: @departmentlist.uuid }
    assert_redirected_to departmentlist_path(assigns(:departmentlist))
  end

  test "should destroy departmentlist" do
    assert_difference('Departmentlist.count', -1) do
      delete :destroy, id: @departmentlist
    end

    assert_redirected_to departmentlists_path
  end
end

require 'test_helper'

class SubjectionlistsControllerTest < ActionController::TestCase
  setup do
    @subjectionlist = subjectionlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subjectionlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subjectionlist" do
    assert_difference('Subjectionlist.count') do
      post :create, subjectionlist: { name: @subjectionlist.name, uuid: @subjectionlist.uuid }
    end

    assert_redirected_to subjectionlist_path(assigns(:subjectionlist))
  end

  test "should show subjectionlist" do
    get :show, id: @subjectionlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subjectionlist
    assert_response :success
  end

  test "should update subjectionlist" do
    patch :update, id: @subjectionlist, subjectionlist: { name: @subjectionlist.name, uuid: @subjectionlist.uuid }
    assert_redirected_to subjectionlist_path(assigns(:subjectionlist))
  end

  test "should destroy subjectionlist" do
    assert_difference('Subjectionlist.count', -1) do
      delete :destroy, id: @subjectionlist
    end

    assert_redirected_to subjectionlists_path
  end
end

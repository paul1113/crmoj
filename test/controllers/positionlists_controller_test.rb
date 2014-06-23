require 'test_helper'

class PositionlistsControllerTest < ActionController::TestCase
  setup do
    @positionlist = positionlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:positionlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create positionlist" do
    assert_difference('Positionlist.count') do
      post :create, positionlist: { name: @positionlist.name, uuid: @positionlist.uuid }
    end

    assert_redirected_to positionlist_path(assigns(:positionlist))
  end

  test "should show positionlist" do
    get :show, id: @positionlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @positionlist
    assert_response :success
  end

  test "should update positionlist" do
    patch :update, id: @positionlist, positionlist: { name: @positionlist.name, uuid: @positionlist.uuid }
    assert_redirected_to positionlist_path(assigns(:positionlist))
  end

  test "should destroy positionlist" do
    assert_difference('Positionlist.count', -1) do
      delete :destroy, id: @positionlist
    end

    assert_redirected_to positionlists_path
  end
end

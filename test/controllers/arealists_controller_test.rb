require 'test_helper'

class ArealistsControllerTest < ActionController::TestCase
  setup do
    @arealist = arealists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arealists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arealist" do
    assert_difference('Arealist.count') do
      post :create, arealist: { name: @arealist.name, uuid: @arealist.uuid }
    end

    assert_redirected_to arealist_path(assigns(:arealist))
  end

  test "should show arealist" do
    get :show, id: @arealist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arealist
    assert_response :success
  end

  test "should update arealist" do
    patch :update, id: @arealist, arealist: { name: @arealist.name, uuid: @arealist.uuid }
    assert_redirected_to arealist_path(assigns(:arealist))
  end

  test "should destroy arealist" do
    assert_difference('Arealist.count', -1) do
      delete :destroy, id: @arealist
    end

    assert_redirected_to arealists_path
  end
end

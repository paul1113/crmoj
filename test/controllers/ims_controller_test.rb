require 'test_helper'

class ImsControllerTest < ActionController::TestCase
  setup do
    @im = ims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create im" do
    assert_difference('Im.count') do
      post :create, im: { number: @im.number, type: @im.type, uuid: @im.uuid }
    end

    assert_redirected_to im_path(assigns(:im))
  end

  test "should show im" do
    get :show, id: @im
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @im
    assert_response :success
  end

  test "should update im" do
    patch :update, id: @im, im: { number: @im.number, type: @im.type, uuid: @im.uuid }
    assert_redirected_to im_path(assigns(:im))
  end

  test "should destroy im" do
    assert_difference('Im.count', -1) do
      delete :destroy, id: @im
    end

    assert_redirected_to ims_path
  end
end

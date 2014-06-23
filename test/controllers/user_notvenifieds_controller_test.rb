require 'test_helper'

class UserNotvenifiedsControllerTest < ActionController::TestCase
  setup do
    @user_notvenified = user_notvenifieds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_notvenifieds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_notvenified" do
    assert_difference('UserNotvenified.count') do
      post :create, user_notvenified: { address: @user_notvenified.address, area: @user_notvenified.area, birthday: @user_notvenified.birthday, department: @user_notvenified.department, fax: @user_notvenified.fax, id_card: @user_notvenified.id_card, im: @user_notvenified.im, mail: @user_notvenified.mail, mobile: @user_notvenified.mobile, name: @user_notvenified.name, position: @user_notvenified.position, postcode: @user_notvenified.postcode, property: @user_notvenified.property, sender: @user_notvenified.sender, subjection: @user_notvenified.subjection, tel: @user_notvenified.tel, uuid: @user_notvenified.uuid }
    end

    assert_redirected_to user_notvenified_path(assigns(:user_notvenified))
  end

  test "should show user_notvenified" do
    get :show, id: @user_notvenified
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_notvenified
    assert_response :success
  end

  test "should update user_notvenified" do
    patch :update, id: @user_notvenified, user_notvenified: { address: @user_notvenified.address, area: @user_notvenified.area, birthday: @user_notvenified.birthday, department: @user_notvenified.department, fax: @user_notvenified.fax, id_card: @user_notvenified.id_card, im: @user_notvenified.im, mail: @user_notvenified.mail, mobile: @user_notvenified.mobile, name: @user_notvenified.name, position: @user_notvenified.position, postcode: @user_notvenified.postcode, property: @user_notvenified.property, sender: @user_notvenified.sender, subjection: @user_notvenified.subjection, tel: @user_notvenified.tel, uuid: @user_notvenified.uuid }
    assert_redirected_to user_notvenified_path(assigns(:user_notvenified))
  end

  test "should destroy user_notvenified" do
    assert_difference('UserNotvenified.count', -1) do
      delete :destroy, id: @user_notvenified
    end

    assert_redirected_to user_notvenifieds_path
  end
end

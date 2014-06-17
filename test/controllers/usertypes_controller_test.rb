require 'test_helper'

class UsertypesControllerTest < ActionController::TestCase
  setup do
    @usertype = usertypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usertypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usertype" do
    assert_difference('Usertype.count') do
      post :create, usertype: { can_create: @usertype.can_create, can_delete: @usertype.can_delete, can_view: @usertype.can_view, usertype_id: @usertype.usertype_id, usertype_name: @usertype.usertype_name }
    end

    assert_redirected_to usertype_path(assigns(:usertype))
  end

  test "should show usertype" do
    get :show, id: @usertype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usertype
    assert_response :success
  end

  test "should update usertype" do
    patch :update, id: @usertype, usertype: { can_create: @usertype.can_create, can_delete: @usertype.can_delete, can_view: @usertype.can_view, usertype_id: @usertype.usertype_id, usertype_name: @usertype.usertype_name }
    assert_redirected_to usertype_path(assigns(:usertype))
  end

  test "should destroy usertype" do
    assert_difference('Usertype.count', -1) do
      delete :destroy, id: @usertype
    end

    assert_redirected_to usertypes_path
  end
end

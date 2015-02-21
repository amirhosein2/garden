require 'test_helper'

class BaghsControllerTest < ActionController::TestCase
  setup do
    @bagh = baghs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baghs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bagh" do
    assert_difference('Bagh.count') do
      post :create, bagh: { address: @bagh.address, name: @bagh.name }
    end

    assert_redirected_to bagh_path(assigns(:bagh))
  end

  test "should show bagh" do
    get :show, id: @bagh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bagh
    assert_response :success
  end

  test "should update bagh" do
    patch :update, id: @bagh, bagh: { address: @bagh.address, name: @bagh.name }
    assert_redirected_to bagh_path(assigns(:bagh))
  end

  test "should destroy bagh" do
    assert_difference('Bagh.count', -1) do
      delete :destroy, id: @bagh
    end

    assert_redirected_to baghs_path
  end
end

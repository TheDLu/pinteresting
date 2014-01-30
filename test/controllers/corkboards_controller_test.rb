require 'test_helper'

class CorkboardsControllerTest < ActionController::TestCase
  setup do
    @corkboard = corkboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corkboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corkboard" do
    assert_difference('Corkboard.count') do
      post :create, corkboard: { description: @corkboard.description, name: @corkboard.name }
    end

    assert_redirected_to corkboard_path(assigns(:corkboard))
  end

  test "should show corkboard" do
    get :show, id: @corkboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corkboard
    assert_response :success
  end

  test "should update corkboard" do
    patch :update, id: @corkboard, corkboard: { description: @corkboard.description, name: @corkboard.name }
    assert_redirected_to corkboard_path(assigns(:corkboard))
  end

  test "should destroy corkboard" do
    assert_difference('Corkboard.count', -1) do
      delete :destroy, id: @corkboard
    end

    assert_redirected_to corkboards_path
  end
end

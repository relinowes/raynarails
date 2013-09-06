require 'test_helper'

class MountainsControllerTest < ActionController::TestCase
  setup do
    @mountain = mountains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mountains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mountain" do
    assert_difference('Mountain.count') do
      post :create, mountain: { elevation: @mountain.elevation, name: @mountain.name }
    end

    assert_redirected_to mountain_path(assigns(:mountain))
  end

  test "should show mountain" do
    get :show, id: @mountain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mountain
    assert_response :success
  end

  test "should update mountain" do
    put :update, id: @mountain, mountain: { elevation: @mountain.elevation, name: @mountain.name }
    assert_redirected_to mountain_path(assigns(:mountain))
  end

  test "should destroy mountain" do
    assert_difference('Mountain.count', -1) do
      delete :destroy, id: @mountain
    end

    assert_redirected_to mountains_path
  end
end

require 'test_helper'

class WatchesControllerTest < ActionController::TestCase
  setup do
    @watch = watches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:watches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create watch" do
    assert_difference('Watch.count') do
      post :create, watch: { brand: @watch.brand, model: @watch.model, picture: @watch.picture }
    end

    assert_redirected_to watch_path(assigns(:watch))
  end

  test "should show watch" do
    get :show, id: @watch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @watch
    assert_response :success
  end

  test "should update watch" do
    patch :update, id: @watch, watch: { brand: @watch.brand, model: @watch.model, picture: @watch.picture }
    assert_redirected_to watch_path(assigns(:watch))
  end

  test "should destroy watch" do
    assert_difference('Watch.count', -1) do
      delete :destroy, id: @watch
    end

    assert_redirected_to watches_path
  end
end

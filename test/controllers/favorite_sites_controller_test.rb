require 'test_helper'

class FavoriteSitesControllerTest < ActionController::TestCase
  setup do
    @favorite_site = favorite_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_site" do
    assert_difference('FavoriteSite.count') do
      post :create, favorite_site: {  }
    end

    assert_redirected_to favorite_site_path(assigns(:favorite_site))
  end

  test "should show favorite_site" do
    get :show, id: @favorite_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_site
    assert_response :success
  end

  test "should update favorite_site" do
    patch :update, id: @favorite_site, favorite_site: {  }
    assert_redirected_to favorite_site_path(assigns(:favorite_site))
  end

  test "should destroy favorite_site" do
    assert_difference('FavoriteSite.count', -1) do
      delete :destroy, id: @favorite_site
    end

    assert_redirected_to favorite_sites_path
  end
end

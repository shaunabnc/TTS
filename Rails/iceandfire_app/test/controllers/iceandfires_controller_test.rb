require 'test_helper'

class IceandfiresControllerTest < ActionController::TestCase
  setup do
    @iceandfire = iceandfires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iceandfires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iceandfire" do
    assert_difference('Iceandfire.count') do
      post :create, iceandfire: { book: @iceandfire.book, current: @iceandfire.current, finish: @iceandfire.finish, page: @iceandfire.page, pages: @iceandfire.pages, purchased: @iceandfire.purchased, title: @iceandfire.title }
    end

    assert_redirected_to iceandfire_path(assigns(:iceandfire))
  end

  test "should show iceandfire" do
    get :show, id: @iceandfire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iceandfire
    assert_response :success
  end

  test "should update iceandfire" do
    patch :update, id: @iceandfire, iceandfire: { book: @iceandfire.book, current: @iceandfire.current, finish: @iceandfire.finish, page: @iceandfire.page, pages: @iceandfire.pages, purchased: @iceandfire.purchased, title: @iceandfire.title }
    assert_redirected_to iceandfire_path(assigns(:iceandfire))
  end

  test "should destroy iceandfire" do
    assert_difference('Iceandfire.count', -1) do
      delete :destroy, id: @iceandfire
    end

    assert_redirected_to iceandfires_path
  end
end

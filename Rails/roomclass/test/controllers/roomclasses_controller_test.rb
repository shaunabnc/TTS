require 'test_helper'

class RoomclassesControllerTest < ActionController::TestCase
  setup do
    @roomclass = roomclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roomclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roomclass" do
    assert_difference('Roomclass.count') do
      post :create, roomclass: { pet: @roomclass.pet, student: @roomclass.student, teacher: @roomclass.teacher }
    end

    assert_redirected_to roomclass_path(assigns(:roomclass))
  end

  test "should show roomclass" do
    get :show, id: @roomclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roomclass
    assert_response :success
  end

  test "should update roomclass" do
    patch :update, id: @roomclass, roomclass: { pet: @roomclass.pet, student: @roomclass.student, teacher: @roomclass.teacher }
    assert_redirected_to roomclass_path(assigns(:roomclass))
  end

  test "should destroy roomclass" do
    assert_difference('Roomclass.count', -1) do
      delete :destroy, id: @roomclass
    end

    assert_redirected_to roomclasses_path
  end
end

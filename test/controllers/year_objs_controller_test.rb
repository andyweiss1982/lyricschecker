require 'test_helper'

class YearObjsControllerTest < ActionController::TestCase
  setup do
    @year_obj = year_objs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:year_objs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create year_obj" do
    assert_difference('YearObj.count') do
      post :create, year_obj: { num: @year_obj.num }
    end

    assert_redirected_to year_obj_path(assigns(:year_obj))
  end

  test "should show year_obj" do
    get :show, id: @year_obj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @year_obj
    assert_response :success
  end

  test "should update year_obj" do
    patch :update, id: @year_obj, year_obj: { num: @year_obj.num }
    assert_redirected_to year_obj_path(assigns(:year_obj))
  end

  test "should destroy year_obj" do
    assert_difference('YearObj.count', -1) do
      delete :destroy, id: @year_obj
    end

    assert_redirected_to year_objs_path
  end
end

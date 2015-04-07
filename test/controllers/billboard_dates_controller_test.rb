require 'test_helper'

class BillboardDatesControllerTest < ActionController::TestCase
  setup do
    @billboard_date = billboard_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billboard_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billboard_date" do
    assert_difference('BillboardDate.count') do
      post :create, billboard_date: { date: @billboard_date.date }
    end

    assert_redirected_to billboard_date_path(assigns(:billboard_date))
  end

  test "should show billboard_date" do
    get :show, id: @billboard_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billboard_date
    assert_response :success
  end

  test "should update billboard_date" do
    patch :update, id: @billboard_date, billboard_date: { date: @billboard_date.date }
    assert_redirected_to billboard_date_path(assigns(:billboard_date))
  end

  test "should destroy billboard_date" do
    assert_difference('BillboardDate.count', -1) do
      delete :destroy, id: @billboard_date
    end

    assert_redirected_to billboard_dates_path
  end
end

require 'test_helper'

class DatesheetsControllerTest < ActionController::TestCase
  setup do
    @datesheet = datesheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datesheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datesheet" do
    assert_difference('Datesheet.count') do
      post :create, datesheet: { class_name: @datesheet.class_name, exam: @datesheet.exam, exam_date: @datesheet.exam_date }
    end

    assert_redirected_to datesheet_path(assigns(:datesheet))
  end

  test "should show datesheet" do
    get :show, id: @datesheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datesheet
    assert_response :success
  end

  test "should update datesheet" do
    patch :update, id: @datesheet, datesheet: { class_name: @datesheet.class_name, exam: @datesheet.exam, exam_date: @datesheet.exam_date }
    assert_redirected_to datesheet_path(assigns(:datesheet))
  end

  test "should destroy datesheet" do
    assert_difference('Datesheet.count', -1) do
      delete :destroy, id: @datesheet
    end

    assert_redirected_to datesheets_path
  end
end

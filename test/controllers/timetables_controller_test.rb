require 'test_helper'

class TimetablesControllerTest < ActionController::TestCase
  setup do
    @timetable = timetables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timetables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timetable" do
    assert_difference('Timetable.count') do
      post :create, timetable: { class_num: @timetable.class_num, day_ofweek: @timetable.day_ofweek, subject_10: @timetable.subject_10, subject_1: @timetable.subject_1, subject_2: @timetable.subject_2, subject_3: @timetable.subject_3, subject_4: @timetable.subject_4, subject_5: @timetable.subject_5, subject_6: @timetable.subject_6, subject_7: @timetable.subject_7, subject_8: @timetable.subject_8, subject_9: @timetable.subject_9 }
    end

    assert_redirected_to timetable_path(assigns(:timetable))
  end

  test "should show timetable" do
    get :show, id: @timetable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timetable
    assert_response :success
  end

  test "should update timetable" do
    patch :update, id: @timetable, timetable: { class_num: @timetable.class_num, day_ofweek: @timetable.day_ofweek, subject_10: @timetable.subject_10, subject_1: @timetable.subject_1, subject_2: @timetable.subject_2, subject_3: @timetable.subject_3, subject_4: @timetable.subject_4, subject_5: @timetable.subject_5, subject_6: @timetable.subject_6, subject_7: @timetable.subject_7, subject_8: @timetable.subject_8, subject_9: @timetable.subject_9 }
    assert_redirected_to timetable_path(assigns(:timetable))
  end

  test "should destroy timetable" do
    assert_difference('Timetable.count', -1) do
      delete :destroy, id: @timetable
    end

    assert_redirected_to timetables_path
  end
end

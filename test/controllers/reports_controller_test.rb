require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post :create, report: { class_name: @report.class_name, class_year: @report.class_year, comment: @report.comment, exam_name: @report.exam_name, marks_10: @report.marks_10, marks_1: @report.marks_1, marks_2: @report.marks_2, marks_3: @report.marks_3, marks_4: @report.marks_4, marks_5: @report.marks_5, marks_6: @report.marks_6, marks_7: @report.marks_7, marks_8: @report.marks_8, marks_9: @report.marks_9, rank: @report.rank, student_id: @report.student_id, subject_10: @report.subject_10, subject_1: @report.subject_1, subject_2: @report.subject_2, subject_3: @report.subject_3, subject_4: @report.subject_4, subject_5: @report.subject_5, subject_6: @report.subject_6, subject_7: @report.subject_7, subject_8: @report.subject_8, subject_9: @report.subject_9 }
    end

    assert_redirected_to report_path(assigns(:report))
  end

  test "should show report" do
    get :show, id: @report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report
    assert_response :success
  end

  test "should update report" do
    patch :update, id: @report, report: { class_name: @report.class_name, class_year: @report.class_year, comment: @report.comment, exam_name: @report.exam_name, marks_10: @report.marks_10, marks_1: @report.marks_1, marks_2: @report.marks_2, marks_3: @report.marks_3, marks_4: @report.marks_4, marks_5: @report.marks_5, marks_6: @report.marks_6, marks_7: @report.marks_7, marks_8: @report.marks_8, marks_9: @report.marks_9, rank: @report.rank, student_id: @report.student_id, subject_10: @report.subject_10, subject_1: @report.subject_1, subject_2: @report.subject_2, subject_3: @report.subject_3, subject_4: @report.subject_4, subject_5: @report.subject_5, subject_6: @report.subject_6, subject_7: @report.subject_7, subject_8: @report.subject_8, subject_9: @report.subject_9 }
    assert_redirected_to report_path(assigns(:report))
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete :destroy, id: @report
    end

    assert_redirected_to reports_path
  end
end

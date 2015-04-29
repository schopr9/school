require 'test_helper'

class AdminformsControllerTest < ActionController::TestCase
  setup do
    @adminform = adminforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminform" do
    assert_difference('Adminform.count') do
      post :create, adminform: { Address_line2: @adminform.Address_line2, Address_line_1-_string: @adminform.Address_line_1-_string, Annual_income_1: @adminform.Annual_income_1, Annual_income_2: @adminform.Annual_income_2, Category: @adminform.Category, City: @adminform.City, Class: @adminform.Class, Date_of_birth: @adminform.Date_of_birth, Email: @adminform.Email, Father_name: @adminform.Father_name, Father_occupation_-string: @adminform.Father_occupation_-string, Gender: @adminform.Gender, Highest_degree_1: @adminform.Highest_degree_1, Highest_degree_2: @adminform.Highest_degree_2, Mother_name: @adminform.Mother_name, Mother_occupation: @adminform.Mother_occupation, Name_of_student: @adminform.Name_of_student, Nationality: @adminform.Nationality, Phone: @adminform.Phone, Pin_code: @adminform.Pin_code, State: @adminform.State }
    end

    assert_redirected_to adminform_path(assigns(:adminform))
  end

  test "should show adminform" do
    get :show, id: @adminform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminform
    assert_response :success
  end

  test "should update adminform" do
    patch :update, id: @adminform, adminform: { Address_line2: @adminform.Address_line2, Address_line_1-_string: @adminform.Address_line_1-_string, Annual_income_1: @adminform.Annual_income_1, Annual_income_2: @adminform.Annual_income_2, Category: @adminform.Category, City: @adminform.City, Class: @adminform.Class, Date_of_birth: @adminform.Date_of_birth, Email: @adminform.Email, Father_name: @adminform.Father_name, Father_occupation_-string: @adminform.Father_occupation_-string, Gender: @adminform.Gender, Highest_degree_1: @adminform.Highest_degree_1, Highest_degree_2: @adminform.Highest_degree_2, Mother_name: @adminform.Mother_name, Mother_occupation: @adminform.Mother_occupation, Name_of_student: @adminform.Name_of_student, Nationality: @adminform.Nationality, Phone: @adminform.Phone, Pin_code: @adminform.Pin_code, State: @adminform.State }
    assert_redirected_to adminform_path(assigns(:adminform))
  end

  test "should destroy adminform" do
    assert_difference('Adminform.count', -1) do
      delete :destroy, id: @adminform
    end

    assert_redirected_to adminforms_path
  end
end

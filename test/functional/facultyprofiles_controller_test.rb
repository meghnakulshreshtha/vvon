require 'test_helper'

class FacultyprofilesControllerTest < ActionController::TestCase
  setup do
    @facultyprofile = facultyprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facultyprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facultyprofile" do
    assert_difference('Facultyprofile.count') do
      post :create, :facultyprofile => @facultyprofile.attributes
    end

    assert_redirected_to facultyprofile_path(assigns(:facultyprofile))
  end

  test "should show facultyprofile" do
    get :show, :id => @facultyprofile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @facultyprofile.to_param
    assert_response :success
  end

  test "should update facultyprofile" do
    put :update, :id => @facultyprofile.to_param, :facultyprofile => @facultyprofile.attributes
    assert_redirected_to facultyprofile_path(assigns(:facultyprofile))
  end

  test "should destroy facultyprofile" do
    assert_difference('Facultyprofile.count', -1) do
      delete :destroy, :id => @facultyprofile.to_param
    end

    assert_redirected_to facultyprofiles_path
  end
end

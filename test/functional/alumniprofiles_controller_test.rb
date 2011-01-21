require 'test_helper'

class AlumniprofilesControllerTest < ActionController::TestCase
  setup do
    @alumniprofile = alumniprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alumniprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alumniprofile" do
    assert_difference('Alumniprofile.count') do
      post :create, :alumniprofile => @alumniprofile.attributes
    end

    assert_redirected_to alumniprofile_path(assigns(:alumniprofile))
  end

  test "should show alumniprofile" do
    get :show, :id => @alumniprofile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @alumniprofile.to_param
    assert_response :success
  end

  test "should update alumniprofile" do
    put :update, :id => @alumniprofile.to_param, :alumniprofile => @alumniprofile.attributes
    assert_redirected_to alumniprofile_path(assigns(:alumniprofile))
  end

  test "should destroy alumniprofile" do
    assert_difference('Alumniprofile.count', -1) do
      delete :destroy, :id => @alumniprofile.to_param
    end

    assert_redirected_to alumniprofiles_path
  end
end

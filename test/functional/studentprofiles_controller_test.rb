require 'test_helper'

class StudentprofilesControllerTest < ActionController::TestCase
  setup do
    @studentprofile = studentprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentprofile" do
    assert_difference('Studentprofile.count') do
      post :create, :studentprofile => @studentprofile.attributes
    end

    assert_redirected_to studentprofile_path(assigns(:studentprofile))
  end

  test "should show studentprofile" do
    get :show, :id => @studentprofile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @studentprofile.to_param
    assert_response :success
  end

  test "should update studentprofile" do
    put :update, :id => @studentprofile.to_param, :studentprofile => @studentprofile.attributes
    assert_redirected_to studentprofile_path(assigns(:studentprofile))
  end

  test "should destroy studentprofile" do
    assert_difference('Studentprofile.count', -1) do
      delete :destroy, :id => @studentprofile.to_param
    end

    assert_redirected_to studentprofiles_path
  end
end

require 'test_helper'

class StumarksControllerTest < ActionController::TestCase
  setup do
    @stumark = stumarks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stumarks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stumark" do
    assert_difference('Stumark.count') do
      post :create, stumark: { Class: @stumark.Class, Full_Name: @stumark.Full_Name, Mathematics: @stumark.Mathematics, Science: @stumark.Science, Social: @stumark.Social, Total: @stumark.Total }
    end

    assert_redirected_to stumark_path(assigns(:stumark))
  end

  test "should show stumark" do
    get :show, id: @stumark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stumark
    assert_response :success
  end

  test "should update stumark" do
    put :update, id: @stumark, stumark: { Class: @stumark.Class, Full_Name: @stumark.Full_Name, Mathematics: @stumark.Mathematics, Science: @stumark.Science, Social: @stumark.Social, Total: @stumark.Total }
    assert_redirected_to stumark_path(assigns(:stumark))
  end

  test "should destroy stumark" do
    assert_difference('Stumark.count', -1) do
      delete :destroy, id: @stumark
    end

    assert_redirected_to stumarks_path
  end
end

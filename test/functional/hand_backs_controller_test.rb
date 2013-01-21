require 'test_helper'

class HandBacksControllerTest < ActionController::TestCase
  setup do
    @hand_back = hand_backs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hand_backs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hand_back" do
    assert_difference('HandBack.count') do
      post :create, hand_back: { email: @hand_back.email, started_at: @hand_back.started_at, test_id: @hand_back.test_id }
    end

    assert_redirected_to hand_back_path(assigns(:hand_back))
  end

  test "should show hand_back" do
    get :show, id: @hand_back
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hand_back
    assert_response :success
  end

  test "should update hand_back" do
    put :update, id: @hand_back, hand_back: { email: @hand_back.email, started_at: @hand_back.started_at, test_id: @hand_back.test_id }
    assert_redirected_to hand_back_path(assigns(:hand_back))
  end

  test "should destroy hand_back" do
    assert_difference('HandBack.count', -1) do
      delete :destroy, id: @hand_back
    end

    assert_redirected_to hand_backs_path
  end
end

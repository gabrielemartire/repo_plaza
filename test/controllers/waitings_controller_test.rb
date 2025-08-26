require "test_helper"

class WaitingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @waiting = waitings(:one)
  end

  test "should get index" do
    get waitings_url
    assert_response :success
  end

  test "should get new" do
    get new_waiting_url
    assert_response :success
  end

  test "should create waiting" do
    assert_difference("Waiting.count") do
      post waitings_url, params: { waiting: { discovered: @waiting.discovered, email: @waiting.email, name: @waiting.name, status: @waiting.status, user_id: @waiting.user_id } }
    end

    assert_redirected_to waiting_url(Waiting.last)
  end

  test "should show waiting" do
    get waiting_url(@waiting)
    assert_response :success
  end

  test "should get edit" do
    get edit_waiting_url(@waiting)
    assert_response :success
  end

  test "should update waiting" do
    patch waiting_url(@waiting), params: { waiting: { discovered: @waiting.discovered, email: @waiting.email, name: @waiting.name, status: @waiting.status, user_id: @waiting.user_id } }
    assert_redirected_to waiting_url(@waiting)
  end

  test "should destroy waiting" do
    assert_difference("Waiting.count", -1) do
      delete waiting_url(@waiting)
    end

    assert_redirected_to waitings_url
  end
end

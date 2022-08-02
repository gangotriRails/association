require "test_helper"

class InstaUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insta_user = insta_users(:one)
  end

  test "should get index" do
    get insta_users_url
    assert_response :success
  end

  test "should get new" do
    get new_insta_user_url
    assert_response :success
  end

  test "should create insta_user" do
    assert_difference('InstaUser.count') do
      post insta_users_url, params: { insta_user: { name: @insta_user.name } }
    end

    assert_redirected_to insta_user_url(InstaUser.last)
  end

  test "should show insta_user" do
    get insta_user_url(@insta_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_insta_user_url(@insta_user)
    assert_response :success
  end

  test "should update insta_user" do
    patch insta_user_url(@insta_user), params: { insta_user: { name: @insta_user.name } }
    assert_redirected_to insta_user_url(@insta_user)
  end

  test "should destroy insta_user" do
    assert_difference('InstaUser.count', -1) do
      delete insta_user_url(@insta_user)
    end

    assert_redirected_to insta_users_url
  end
end

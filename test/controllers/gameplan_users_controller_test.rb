require 'test_helper'

class GameplanUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gameplan_user = gameplan_users(:one)
  end

  test "should get index" do
    get gameplan_users_url, as: :json
    assert_response :success
  end

  test "should create gameplan_user" do
    assert_difference('GameplanUser.count') do
      post gameplan_users_url, params: { gameplan_user: { gameplan_id: @gameplan_user.gameplan_id, user_id: @gameplan_user.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show gameplan_user" do
    get gameplan_user_url(@gameplan_user), as: :json
    assert_response :success
  end

  test "should update gameplan_user" do
    patch gameplan_user_url(@gameplan_user), params: { gameplan_user: { gameplan_id: @gameplan_user.gameplan_id, user_id: @gameplan_user.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy gameplan_user" do
    assert_difference('GameplanUser.count', -1) do
      delete gameplan_user_url(@gameplan_user), as: :json
    end

    assert_response 204
  end
end

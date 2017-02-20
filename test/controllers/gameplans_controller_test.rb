require 'test_helper'

class GameplansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gameplan = gameplans(:one)
  end

  test "should get index" do
    get gameplans_url, as: :json
    assert_response :success
  end

  test "should create gameplan" do
    assert_difference('Gameplan.count') do
      post gameplans_url, params: { gameplan: { event_id: @gameplan.event_id, name: @gameplan.name, user_id: @gameplan.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show gameplan" do
    get gameplan_url(@gameplan), as: :json
    assert_response :success
  end

  test "should update gameplan" do
    patch gameplan_url(@gameplan), params: { gameplan: { event_id: @gameplan.event_id, name: @gameplan.name, user_id: @gameplan.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy gameplan" do
    assert_difference('Gameplan.count', -1) do
      delete gameplan_url(@gameplan), as: :json
    end

    assert_response 204
  end
end

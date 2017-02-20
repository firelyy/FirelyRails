# require 'test_helper'

# class UsersControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @user = users(:one)
#   end

#   test "should get index" do
#     get users_url, as: :json
#     assert_response :success
#   end

#   test "should create user" do
#     assert_difference('User.count') do
#       post users_url, params: { user: { cell: @user.cell, confirmation_sent_at: @user.confirmation_sent_at, confirmation_token: @user.confirmation_token, confirmed_at: @user.confirmed_at, current_sign_in_at: @user.current_sign_in_at, current_sign_in_ip: @user.current_sign_in_ip, last_sign_in_at: @user.last_sign_in_at, last_sign_in_ip: @user.last_sign_in_ip, name: @user.name, password_digest: @user.password_digest, sign_in_count: @user.sign_in_count } }, as: :json
#     end

#     assert_response 201
#   end

#   test "should show user" do
#     get user_url(@user), as: :json
#     assert_response :success
#   end

#   test "should update user" do
#     patch user_url(@user), params: { user: { cell: @user.cell, confirmation_sent_at: @user.confirmation_sent_at, confirmation_token: @user.confirmation_token, confirmed_at: @user.confirmed_at, current_sign_in_at: @user.current_sign_in_at, current_sign_in_ip: @user.current_sign_in_ip, last_sign_in_at: @user.last_sign_in_at, last_sign_in_ip: @user.last_sign_in_ip, name: @user.name, password_digest: @user.password_digest, sign_in_count: @user.sign_in_count } }, as: :json
#     assert_response 200
#   end

#   test "should destroy user" do
#     assert_difference('User.count', -1) do
#       delete user_url(@user), as: :json
#     end

#     assert_response 204
#   end
# end

require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address: @user.address, birthday: @user.birthday, city: @user.city, confirm_password: @user.confirm_password, country: @user.country, e­mail: @user.e­mail, fullname: @user.fullname, latitude: @user.latitude, login: @user.login, longitude: @user.longitude, password: @user.password, role_id: @user.role_id, state: @user.state, zip: @user.zip } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address: @user.address, birthday: @user.birthday, city: @user.city, confirm_password: @user.confirm_password, country: @user.country, e­mail: @user.e­mail, fullname: @user.fullname, latitude: @user.latitude, login: @user.login, longitude: @user.longitude, password: @user.password, role_id: @user.role_id, state: @user.state, zip: @user.zip } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end

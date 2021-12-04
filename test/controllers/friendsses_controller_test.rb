require "test_helper"

class FriendssesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friendss = friendsses(:one)
  end

  test "should get index" do
    get friendsses_url
    assert_response :success
  end

  test "should get new" do
    get new_friendss_url
    assert_response :success
  end

  test "should create friendss" do
    assert_difference('Friendss.count') do
      post friendsses_url, params: { friendss: { email: @friendss.email, first_name: @friendss.first_name, last_name: @friendss.last_name, phone: @friendss.phone, twitter: @friendss.twitter } }
    end

    assert_redirected_to friendss_url(Friendss.last)
  end

  test "should show friendss" do
    get friendss_url(@friendss)
    assert_response :success
  end

  test "should get edit" do
    get edit_friendss_url(@friendss)
    assert_response :success
  end

  test "should update friendss" do
    patch friendss_url(@friendss), params: { friendss: { email: @friendss.email, first_name: @friendss.first_name, last_name: @friendss.last_name, phone: @friendss.phone, twitter: @friendss.twitter } }
    assert_redirected_to friendss_url(@friendss)
  end

  test "should destroy friendss" do
    assert_difference('Friendss.count', -1) do
      delete friendss_url(@friendss)
    end

    assert_redirected_to friendsses_url
  end
end

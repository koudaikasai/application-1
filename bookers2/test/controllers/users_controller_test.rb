require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get member" do
    get users_member_url
    assert_response :success
  end

end

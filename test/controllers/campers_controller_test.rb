require 'test_helper'

class CampersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end
  
  test "should get new" do
    post login_path, params: { session: { email:    @user.email,
                                          password: 'password' } }
    get campers_url
    assert_response :success
  end
  
  test "should redirect if not logged in" do
    get campers_url
    assert_redirected_to login_path
  end

end

require 'test_helper'

class DigitalesDotGgControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get digitales_dot_gg_homepage_url
    assert_response :success
  end

end

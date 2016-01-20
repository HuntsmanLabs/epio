require 'test_helper'

class InstantControllerTest < ActionController::TestCase
  test "should get post_now" do
    get :post_now
    assert_response :success
  end

end

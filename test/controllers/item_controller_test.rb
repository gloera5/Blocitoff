require 'test_helper'

class ItemControllerTest < ActionController::TestCase
  test "should get user:create" do
    get :user:create
    assert_response :success
  end

end

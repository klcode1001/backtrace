require 'test_helper'

class BestAnswersControllerTest < ActionController::TestCase
  test "should get best" do
    get :best
    assert_response :success
  end

end

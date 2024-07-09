require "test_helper"

class SpiritsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spirits_index_url
    assert_response :success
  end
end

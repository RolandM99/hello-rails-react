require "test_helper"

class FirstPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get first_pages_index_url
    assert_response :success
  end
end

require "test_helper"

class DiscussionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get discussions_create_url
    assert_response :success
  end

  test "should get new" do
    get discussions_new_url
    assert_response :success
  end
end

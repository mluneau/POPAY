require "test_helper"

class AppointmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appointments_index_url
    assert_response :success
  end

  test "should get show" do
    get appointments_show_url
    assert_response :success
  end

  test "should get new" do
    get appointments_new_url
    assert_response :success
  end

  test "should get create" do
    get appointments_create_url
    assert_response :success
  end
end

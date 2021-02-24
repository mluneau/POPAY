require "test_helper"

class Employee::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get employee_dashboards_show_url
    assert_response :success
  end
end

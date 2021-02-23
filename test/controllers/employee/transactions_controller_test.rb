require "test_helper"

class Employee::TransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee_transactions_index_url
    assert_response :success
  end

  test "should get create" do
    get employee_transactions_create_url
    assert_response :success
  end

  test "should get new" do
    get employee_transactions_new_url
    assert_response :success
  end
end

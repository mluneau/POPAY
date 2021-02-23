require "test_helper"

class Hr::TransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hr_transactions_index_url
    assert_response :success
  end
end

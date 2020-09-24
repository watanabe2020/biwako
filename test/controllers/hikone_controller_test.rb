require 'test_helper'

class HikoneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hikone_index_url
    assert_response :success
  end

end

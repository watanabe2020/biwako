require 'test_helper'

class WrControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wr_index_url
    assert_response :success
  end

end

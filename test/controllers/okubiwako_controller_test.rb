require 'test_helper'

class OkubiwakoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get okubiwako_index_url
    assert_response :success
  end

end

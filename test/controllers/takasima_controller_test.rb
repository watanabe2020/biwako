require 'test_helper'

class TakasimaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get takasima_index_url
    assert_response :success
  end

end

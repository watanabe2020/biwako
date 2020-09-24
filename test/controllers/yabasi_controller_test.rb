require 'test_helper'

class YabasiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yabasi_index_url
    assert_response :success
  end

end

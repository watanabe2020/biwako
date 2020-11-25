require 'test_helper'

class MyControllerTest < ActionDispatch::IntegrationTest
  test "should get room" do
    get my_room_url
    assert_response :success
  end

  test "should get index" do
    get my_index_url
    assert_response :success
  end

end

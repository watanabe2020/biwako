require 'test_helper'

class HamaootuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hamaootu_index_url
    assert_response :success
  end

end

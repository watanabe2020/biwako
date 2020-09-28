require 'test_helper'

class OkinosimaControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get okinosima_index_url
    assert_response :success
  end
end

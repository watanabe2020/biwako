require 'test_helper'

class HokkoControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get hokko_index_url
    assert_response :success
  end
end

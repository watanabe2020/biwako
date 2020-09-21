require 'test_helper'

class KarasakiControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get karasaki_index_url
    assert_response :success
  end
end

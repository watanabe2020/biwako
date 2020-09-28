require 'test_helper'

class KihamaControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get kihama_index_url
    assert_response :success
  end
end

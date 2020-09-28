require 'test_helper'

class NagahamaControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get nagahama_index_url
    assert_response :success
  end
end

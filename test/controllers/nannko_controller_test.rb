require 'test_helper'

class NannkoControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get nannko_index_url
    assert_response :success
  end
end

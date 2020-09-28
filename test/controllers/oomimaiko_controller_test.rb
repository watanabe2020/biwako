require 'test_helper'

class OomimaikoControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get oomimaiko_index_url
    assert_response :success
  end
end

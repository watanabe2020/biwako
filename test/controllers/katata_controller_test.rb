require 'test_helper'

class KatataControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get katata_index_url
    assert_response :success
  end
end

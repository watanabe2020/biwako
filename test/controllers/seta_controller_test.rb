require 'test_helper'

class SetaControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get seta_index_url
    assert_response :success
  end
end

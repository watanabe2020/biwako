require 'test_helper'

class OotuControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get ootu_index_url
    assert_response :success
  end
end

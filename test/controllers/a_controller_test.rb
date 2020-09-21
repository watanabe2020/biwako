require 'test_helper'

class AControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get a_new_url
    assert_response :success
  end
end

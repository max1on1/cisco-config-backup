require 'test_helper'

class ConfigsControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get configs_show_url
    assert_response :success
  end
end

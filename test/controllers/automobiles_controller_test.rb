require 'test_helper'

class AutomobilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get automobiles_index_url
    assert_response :success
  end

  test "should get new" do
    get automobiles_new_url
    assert_response :success
  end

  test "should get show" do
    get automobiles_show_url
    assert_response :success
  end

end

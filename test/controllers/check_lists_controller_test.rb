require 'test_helper'

class CheckListsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get check_lists_new_url
    assert_response :success
  end

  test "should get create" do
    get check_lists_create_url
    assert_response :success
  end

end

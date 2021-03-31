require 'test_helper'

class TalesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tales_index_url
    assert_response :success
  end

  test "should get show" do
    get tales_show_url
    assert_response :success
  end

  test "should get new" do
    get tales_new_url
    assert_response :success
  end

  test "should get create" do
    get tales_create_url
    assert_response :success
  end

  test "should get edit" do
    get tales_edit_url
    assert_response :success
  end

  test "should get update" do
    get tales_update_url
    assert_response :success
  end

end

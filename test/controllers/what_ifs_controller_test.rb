require 'test_helper'

class WhatIfsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get what_ifs_index_url
    assert_response :success
  end

  test "should get show" do
    get what_ifs_show_url
    assert_response :success
  end

  test "should get new" do
    get what_ifs_new_url
    assert_response :success
  end

  test "should get create" do
    get what_ifs_create_url
    assert_response :success
  end

  test "should get edit" do
    get what_ifs_edit_url
    assert_response :success
  end

  test "should get update" do
    get what_ifs_update_url
    assert_response :success
  end

end

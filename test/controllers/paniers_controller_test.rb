require 'test_helper'

class PaniersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get paniers_index_url
    assert_response :success
  end

  test "should get show" do
    get paniers_show_url
    assert_response :success
  end

  test "should get new" do
    get paniers_new_url
    assert_response :success
  end

  test "should get create" do
    get paniers_create_url
    assert_response :success
  end

  test "should get delete" do
    get paniers_delete_url
    assert_response :success
  end

end

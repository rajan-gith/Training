require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book_index_url
    assert_response :success
  end

  test "should get view" do
    get book_view_url
    assert_response :success
  end

  test "should get new" do
    get book_new_url
    assert_response :success
  end

  test "should get create" do
    get book_create_url
    assert_response :success
  end

  test "should get update" do
    get book_update_url
    assert_response :success
  end

  test "should get delete" do
    get book_delete_url
    assert_response :success
  end

  test "should get edit" do
    get book_edit_url
    assert_response :success
  end

end

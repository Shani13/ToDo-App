require 'test_helper'

class Todo2ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo2_item = todo2_items(:one)
  end

  test "should get index" do
    get todo2_items_url
    assert_response :success
  end

  test "should get new" do
    get new_todo2_item_url
    assert_response :success
  end

  test "should create todo2_item" do
    assert_difference('Todo2Item.count') do
      post todo2_items_url, params: { todo2_item: { description: @todo2_item.description } }
    end

    assert_redirected_to todo2_item_url(Todo2Item.last)
  end

  test "should show todo2_item" do
    get todo2_item_url(@todo2_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo2_item_url(@todo2_item)
    assert_response :success
  end

  test "should update todo2_item" do
    patch todo2_item_url(@todo2_item), params: { todo2_item: { description: @todo2_item.description } }
    assert_redirected_to todo2_item_url(@todo2_item)
  end

  test "should destroy todo2_item" do
    assert_difference('Todo2Item.count', -1) do
      delete todo2_item_url(@todo2_item)
    end

    assert_redirected_to todo2_items_url
  end
end

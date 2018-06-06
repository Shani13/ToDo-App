require "application_system_test_case"

class Todo2ItemsTest < ApplicationSystemTestCase
  setup do
    @todo2_item = todo2_items(:one)
  end

  test "visiting the index" do
    visit todo2_items_url
    assert_selector "h1", text: "Todo2 Items"
  end

  test "creating a Todo2 item" do
    visit todo2_items_url
    click_on "New Todo2 Item"

    fill_in "Description", with: @todo2_item.description
    click_on "Create Todo2 item"

    assert_text "Todo2 item was successfully created"
    click_on "Back"
  end

  test "updating a Todo2 item" do
    visit todo2_items_url
    click_on "Edit", match: :first

    fill_in "Description", with: @todo2_item.description
    click_on "Update Todo2 item"

    assert_text "Todo2 item was successfully updated"
    click_on "Back"
  end

  test "destroying a Todo2 item" do
    visit todo2_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Todo2 item was successfully destroyed"
  end
end

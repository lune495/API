require "application_system_test_case"

class NeighboursTest < ApplicationSystemTestCase
  setup do
    @neighbour = neighbours(:one)
  end

  test "visiting the index" do
    visit neighbours_url
    assert_selector "h1", text: "Neighbours"
  end

  test "creating a Neighbour" do
    visit neighbours_url
    click_on "New Neighbour"

    fill_in "About", with: @neighbour.about
    fill_in "Address", with: @neighbour.address
    fill_in "Name", with: @neighbour.name
    fill_in "Phone", with: @neighbour.phone
    click_on "Create Neighbour"

    assert_text "Neighbour was successfully created"
    click_on "Back"
  end

  test "updating a Neighbour" do
    visit neighbours_url
    click_on "Edit", match: :first

    fill_in "About", with: @neighbour.about
    fill_in "Address", with: @neighbour.address
    fill_in "Name", with: @neighbour.name
    fill_in "Phone", with: @neighbour.phone
    click_on "Update Neighbour"

    assert_text "Neighbour was successfully updated"
    click_on "Back"
  end

  test "destroying a Neighbour" do
    visit neighbours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Neighbour was successfully destroyed"
  end
end

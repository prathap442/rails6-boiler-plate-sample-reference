require "application_system_test_case"

class RecipiesTest < ApplicationSystemTestCase
  setup do
    @recipy = recipies(:one)
  end

  test "visiting the index" do
    visit recipies_url
    assert_selector "h1", text: "Recipies"
  end

  test "creating a Recipie" do
    visit recipies_url
    click_on "New Recipie"

    fill_in "Description", with: @recipy.description
    fill_in "Title", with: @recipy.title
    click_on "Create Recipie"

    assert_text "Recipie was successfully created"
    click_on "Back"
  end

  test "updating a Recipie" do
    visit recipies_url
    click_on "Edit", match: :first

    fill_in "Description", with: @recipy.description
    fill_in "Title", with: @recipy.title
    click_on "Update Recipie"

    assert_text "Recipie was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipie" do
    visit recipies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipie was successfully destroyed"
  end
end

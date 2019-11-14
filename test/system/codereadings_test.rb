require "application_system_test_case"

class CodereadingsTest < ApplicationSystemTestCase
  setup do
    @codereading = codereadings(:one)
  end

  test "visiting the index" do
    visit codereadings_url
    assert_selector "h1", text: "Codereadings"
  end

  test "creating a Codereading" do
    visit codereadings_url
    click_on "New Codereading"

    fill_in "Content", with: @codereading.content
    fill_in "Title", with: @codereading.title
    click_on "Create Codereading"

    assert_text "Codereading was successfully created"
    click_on "Back"
  end

  test "updating a Codereading" do
    visit codereadings_url
    click_on "Edit", match: :first

    fill_in "Content", with: @codereading.content
    fill_in "Title", with: @codereading.title
    click_on "Update Codereading"

    assert_text "Codereading was successfully updated"
    click_on "Back"
  end

  test "destroying a Codereading" do
    visit codereadings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Codereading was successfully destroyed"
  end
end

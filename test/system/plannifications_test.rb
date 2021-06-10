require "application_system_test_case"

class PlannificationsTest < ApplicationSystemTestCase
  setup do
    @plannification = plannifications(:one)
  end

  test "visiting the index" do
    visit plannifications_url
    assert_selector "h1", text: "Plannifications"
  end

  test "creating a Plannification" do
    visit plannifications_url
    click_on "New Plannification"

    fill_in "Date", with: @plannification.date
    check "Etat" if @plannification.etat
    fill_in "Localisation", with: @plannification.localisation
    click_on "Create Plannification"

    assert_text "Plannification was successfully created"
    click_on "Back"
  end

  test "updating a Plannification" do
    visit plannifications_url
    click_on "Edit", match: :first

    fill_in "Date", with: @plannification.date
    check "Etat" if @plannification.etat
    fill_in "Localisation", with: @plannification.localisation
    click_on "Update Plannification"

    assert_text "Plannification was successfully updated"
    click_on "Back"
  end

  test "destroying a Plannification" do
    visit plannifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plannification was successfully destroyed"
  end
end

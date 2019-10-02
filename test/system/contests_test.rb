require "application_system_test_case"

class ContestsTest < ApplicationSystemTestCase
  setup do
    @contest = contests(:one)
  end

  test "visiting the index" do
    visit contests_url
    assert_selector "h1", text: "Contests"
  end

  test "creating a Contest" do
    visit contests_url
    click_on "New Contest"

    click_on "Create Contest"

    assert_text "Contest was successfully created"
    click_on "Back"
  end

  test "updating a Contest" do
    visit contests_url
    click_on "Edit", match: :first

    click_on "Update Contest"

    assert_text "Contest was successfully updated"
    click_on "Back"
  end

  test "destroying a Contest" do
    visit contests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contest was successfully destroyed"
  end
end

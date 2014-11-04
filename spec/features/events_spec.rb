require 'rails_helper'

feature "User creates an event" do

  scenario "user sees the new event page" do
    visit '/events'
    expect(page).to have_no_content("A test event")
    click_on "New Event"
    fill_in "Description", with: "A test event"
    fill_in "Location", with: "A test location"
    fill_in "Capacity", with: 3
    click_on "Create Event"
    expect(page).to have_content("A test event")
    expect(page).to have_content("A test location")

    save_and_open_page
  end

end

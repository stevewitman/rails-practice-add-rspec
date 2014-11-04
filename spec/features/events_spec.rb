require 'rails_helper'

feature "Events" do

  scenario "Creating an event" do
    visit '/events/new'
    expect(page).to have_no_content("A test event")
    fill_in "Description", with: "A test event"
    save_and_open_page
  end

end

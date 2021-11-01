require 'spec_helper'

feature "Enter name" do
  scenario "Entering name" do
    visit '/'
    fill_in 'name', with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Bob'
  end
end

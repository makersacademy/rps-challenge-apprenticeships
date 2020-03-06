require 'spec_helper'
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name, with: 'Red'
    click_button 'Submit'
    expect(page).to have_content 'Red'
  end
end
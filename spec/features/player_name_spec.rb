require 'spec_helper'
feature 'Enter name!' do
  scenario 'submitting names' do
    visit('/')
    fill_in with: 'Red'
    click_button 'submit'
    expect(page).to have_content 'Red'
  end
end
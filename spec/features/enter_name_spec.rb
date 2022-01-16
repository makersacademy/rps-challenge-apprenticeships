require 'spec_helper'

feature 'Enter player name' do
  scenario 'A player will enter their name to start playing' do
    visit '/'
    fill_in 'name', with: 'Alex'
    click_button 'Submit'
    expect(page).to have_content 'Alex'
  end
end


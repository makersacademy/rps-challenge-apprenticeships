require 'spec_helper'

feature 'play game' do
  before do
    visit('/')
    fill_in :name, with: 'Red'
    click_button 'Submit'
  end
  

  scenario 'see the items i can play' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose a item' do
    click_button 'Rock'
    expect(page).to have_content 'Player chose Rock'
  end
end
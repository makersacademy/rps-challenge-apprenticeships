require 'spec_helper'

feature 'play game' do
  before do
    visit('/')
    fill_in :name, with: 'Red'
    click_button 'Submit'
  end
  

  scenario 'see the choices i can play' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end
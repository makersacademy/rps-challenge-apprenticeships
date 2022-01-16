require 'spec_helper'

feature 'playing a game' do
  context 'in order to play the game the player needs to see the available moves' do
  before do
    visit '/'
    fill_in 'name', with: 'Dave'
    click_button 'Submit'
  end

    scenario 'pick a move in order to play' do
      expect(page).to have_button 'Rock'
      expect(page).to have_button 'Paper'
      expect(page).to have_button 'Scissors'
    end
  end

    scenario 'choose a move' do
      click_button 'Paper'
      expect(page).to have_content 'You chose Paper'
    end

end
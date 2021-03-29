require 'spec_helper'

feature 'game play' do

  before do
    sign_in_and_play
    expect(page).to have_content 'Welcome Rahat'
  end
  
  scenario 'options are presented' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'player picks an option' do
    click_button 'Rock'
    expect(page).to have_content "Your Weapon Is Rock!"
  end
  
  #scenario 'computer picks an option' do
    #expect(page).to have_content "Computer Chose Rock!"
  #end

end
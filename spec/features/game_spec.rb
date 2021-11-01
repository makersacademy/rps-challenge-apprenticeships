require 'spec_helper'

feature 'play RPS' do 
  before do 
    visit '/'
    fill_in 'name', with: 'Urs'
    click_button 'Submit'
  end

  scenario 'show options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose a option' do 
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'

  end
end

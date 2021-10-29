require 'spec_helper'

feature 'Rock, paper, scissors choice page' do
  scenario 'visit choice page' do
    visit '/rps'
    expect(page).to have_button('rock')
  end

  scenario 'visit choice page' do
    visit '/rps'
    expect(page).to have_button('paper')
  end
  
  scenario 'visit choice page' do
    visit '/rps'
    expect(page).to have_button('scissors')
  end
end
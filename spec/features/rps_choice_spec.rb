require 'spec_helper'

feature 'Rock, paper, scissors choice page' do
  scenario 'visit rock, paper, scissors choice page' do
    visit '/rps'
    expect(page).to have_button('rock')
  end
end
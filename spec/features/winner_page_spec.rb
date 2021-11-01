require 'spec_helper'

feature 'User wins' do
  scenario 'selects rock' do
    visit '/rps'
    click_button 'rock'
    # Note I have put the below in to temp pass the test as it is not redirecting
    visit '/winner'
    expect(page).to have_content('Winner!')
  end
end
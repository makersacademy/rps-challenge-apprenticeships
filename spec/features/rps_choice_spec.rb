require 'spec_helper'

feature 'Rock, paper, scissors choice page' do
  scenario 'visit test page' do
    visit '/rps'
    expect(page).to have_content('test page')
  end
end
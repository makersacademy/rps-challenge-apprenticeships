require 'spec_helper.rb'

feature 'Weapon choice' do
  scenario 'Clicking rock, paper or scissors' do
    visit '/'
    fill_in('player', with: 'Jon')
    click_button("Let's Play")
    click_button("Begin Game")
    expect(page).to have_content('Choose your weapon')
  end
end

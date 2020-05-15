require 'spec_helper.rb'

feature 'Testing entering of name' do
  scenario 'Ability to enter name on form' do
    visit '/'
    fill_in('player', with: 'Jon')
    click_button("Let's Play")
    expect(page).to have_content('Jon')
  end
end

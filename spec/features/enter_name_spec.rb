require './app'
require "capybara/rspec"
feature 'Enter Name' do
  scenario 'player submits name' do
    visit ('/')
    #give them a form to fill in
    fill_in 'name', with: 'Aysha'
    # give them  button to submit
    click_button 'submit and play'
    #display thier name on the screen
    #save_and_open_page
    expect(page).to have_content('Aysha')
  end
end

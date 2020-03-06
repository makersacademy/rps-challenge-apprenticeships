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

feature 'Choose your weapon' do
  scenario 'player submits weapon' do
  visit ('/outcome')
  fill_in 'weapon', with: 'Rock'
  click_button 'submit and play'
  #expect(page).to have_content('rock')
end
end 
feature 'Display outcome' do
  scenario 'display who wins' do
  visit ('/outcome')
  fill_in 'weapon', with: 'Rock'
  expect("Rock" && "Paper").to have_content ("Paper wins mate")
  #expect("Rock" && "Paper").not_to be eq(true)
end
end

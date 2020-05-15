require 'spec_helper.rb'

feature 'Computer choice' do
  scenario 'Computer picks a random weapon choice' do
    visit '/'
    fill_in('player', with: 'Jon')
    click_button("Let's Play")
    expect(page).to have_content
  end
end

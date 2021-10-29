require 'spec_helper'

feature 'register name' do 
  scenario 'display the name' do 
    visit '/'
    fill_in 'name', with: 'Urs'
    click_button 'Submit'
    expect(page).to have_content 'Urs'
  end

end

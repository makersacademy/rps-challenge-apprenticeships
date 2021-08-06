require 'spec_helper'

feature 'index page' do 
  scenario 'visit index page' do 
    visit '/'
    expect(page).to have_content('Welcome!')
  end

  scenario 'Register and see my name' do
    visit '/'
    fill_in 'p1_name', with: 'Astrid'
    click_button 'Submit'
    expect(page).to have_content 'Hello, Astrid'
  end
end 

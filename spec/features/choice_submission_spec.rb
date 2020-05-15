require 'spec_helper.rb'

feature 'Choice' do
  scenario 'can submit a choice of rock, paper or scissors' do
    sign_in_and_play
    click_on('Rock')
    expect(page).to have_content 'Joe, you selected Rock!'
  end
end
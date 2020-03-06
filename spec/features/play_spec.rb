require 'spec_helper'

feature 'Playing game' do

  scenario 'view player weapons' do
    visit '/play'
    expect(page).to have_button "rock"
    expect(page).to have_button "paper"
    expect(page).to have_button "scissors"
  end


  scenario 'player chooses a weapon' do
    visit '/play'
    click_button 'rock'
    expect(page).to have_content "rock"
  end
end

#   scenario 'computer chooses a weapon' do
#     visit '/play'
#     click_button 'rock'
#     page.has_content?('rock')
#   end
# end

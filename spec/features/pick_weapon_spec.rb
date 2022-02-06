feature 'Pick weapon' do 
  scenario 'user picks between rock paper scissors' do 
    visit('/pick-weapon')
    click_button "rock"
    expect(page).to have_content 'YOU PICKED ROCK'
  end
end

# feature 'Pick weapon' do 
#   scenario 'user picks between rock paper scissors' do 
#     visit('/pick-weapon')
#     click_button 'PAPER'
#     expect(page).to have_content 'YOU PICKED PAPER'
#   end
# end

# feature 'Pick weapon' do 
#   scenario 'user picks between rock paper scissors' do 
#     visit('/pick-weapon')
#     click_button 'SCISSORS'
#     expect(page).to have_content 'YOU PICKED SCISSORS'
#   end
# end
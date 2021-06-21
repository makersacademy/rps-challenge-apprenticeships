feature 'Pick RockPaperScissors' do
  
  scenario 'Player picks Rock' do
    visit('/')
    click_button 'Rock'
    expect(page).to have_content 'Emma has picked Rock!'
  end


end
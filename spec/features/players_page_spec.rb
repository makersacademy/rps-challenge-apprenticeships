feature 'Players enter names' do 
  scenario 'user can fill in name on form' do 
    visit('/playersnames')
    fill_in :player1, with: "eden"
    fill_in :player2, with: "lindy"
    click_button "To Battle!"
    expect(page).to have_content 'eden vs. lindy'



end

end
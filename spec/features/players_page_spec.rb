feature 'Players enter names' do 
  scenario 'user can fill in name on form' do 
    visit('/playersnames')
    fill_in :player1, with: "eden"
    click_button "To Battle!"
    expect(page).to have_content "eden vs. The GAME!"
end

end
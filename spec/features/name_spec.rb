

feature '#add_name' do
  scenario 'display name on webpage' do
    visit '/'
    fill_in :player_1_name, with: "Ben"
    click_button "Submit"
    expect(page).to have_content('Ben')
  end
end

# def sign_in_and_play
#   visit('/')
#   fill_in :player1, with: "Ben"
#   fill_in :player2, with:"Hamid"
#   click_button "Submit"
# end

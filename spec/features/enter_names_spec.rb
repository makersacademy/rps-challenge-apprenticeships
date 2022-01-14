# two players
# feature 'Enter names' do
#   scenario 'submitting names' do
#     visit('/')
#     fill_in :player_1_name, with: 'Pilly'
#     fill_in :player_2_name, with: 'Milly'
#     click_button 'Start Game!'
#     expect(page).to have_content 'Pilly vs. Milly'
#   end
# end

# player against computer
feature 'one player' do
  scenario 'Player against computer' do
    visit('/')
    fill_in :player_1_name, with: 'Pilly'
    click_button 'Start Game!'
    expect(page).to have_content 'Pilly vs. Computer'
  end
end
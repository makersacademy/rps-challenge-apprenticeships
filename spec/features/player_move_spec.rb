feature 'player makes their move' do
  scenario 'player submits rock' do
    submit_name
    fill_in :move, with: 'Rock'
    click_button 'Play'
    expect(page).to have_content 'Rock'
  end
end

# feature 'player move gets passed through to winner method' do
#   scenario 'the winner is then calculated' do
#   expect(page).to have_content 'The winner is...'
#   end
# end
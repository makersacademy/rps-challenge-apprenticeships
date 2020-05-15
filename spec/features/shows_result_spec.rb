feature 'Results' do
  scenario 'shows results after user selection' do
    visit '/'
    sign_in_and_play
    click_on('rock')
    expect(page).to have_content('You lose!')
  end
end

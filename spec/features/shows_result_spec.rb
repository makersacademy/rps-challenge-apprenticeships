feature 'Results' do
  scenario 'shows results after user selection' do
    srand(2346)
    visit '/'
    sign_in_and_play
    click_on('rock')
    expect(page).to have_content('Joe, you win!')
  end
end

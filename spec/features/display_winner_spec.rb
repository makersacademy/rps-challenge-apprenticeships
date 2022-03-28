xfeature 'Enter names' do
  scenario 'display winner' do
    sign_in_and_play
    click_button 'choice'
    expect(page).to have_content 'win'
  end
end

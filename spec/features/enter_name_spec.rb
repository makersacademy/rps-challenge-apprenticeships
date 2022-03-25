feature 'enter name' do
  scenario 'when loaded it displays message' do
    visit ('/')
    expect(page).to have_content 'Please enter your name:'
  end
  scenario 'lets user enter their name' do
    sign_in_and_play
    expect(page).to have_content "Ken"
  end
end

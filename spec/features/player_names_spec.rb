describe 'enter name', type: :feature do
  it 'allows the user to register their name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome! John'
  end
end

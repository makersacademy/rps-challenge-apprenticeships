feature 'Enter name' do
  scenario 'marketeer enters name' do
    sign_in_to_play
    save_and_open_page
    expect(page).to have_content 'Get ready to play, Emma!'
  end
end
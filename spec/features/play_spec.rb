feature 'play' do
  scenario 'is given 3 choices' do
  sign_in
    # save_and_open_page
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario 'can pick 1 option' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Rock'
  end
end

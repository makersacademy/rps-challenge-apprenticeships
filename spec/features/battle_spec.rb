feature 'battle' do

  scenario 'choose R,P or S via button and receive confirmation' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Wilbur chose Rock'
  end

end

feature 'rules page' do
  scenario 'click on button to go to play screen' do
    sign_in_and_submit
    click_link 'Play'
    expect(page).not_to have_content('Hi Meg, this is a webpage for playing rock, paper, scissors')
    expect(page).to have_content('Choose your weapon')
  end
end

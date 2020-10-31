feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end


feature 'enter_name' do
  scenario 'submit name' do
    sign_in_and_play
    expect(page).to have_content 'Eunice'
  end
end

feature 'choose_a_pick' do
  scenario 'submit choice' do
    visit ('/play')
    fill_in :rock, with: 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'Rock'
  end
end
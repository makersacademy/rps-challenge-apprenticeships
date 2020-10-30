feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end

feature 'enter_name' do
  scenario 'submit names' do
    visit ('/')
    fill_in :player, with: 'Eunice'
    click_button 'Submit'
    expect(page).to have_content 'Eunice'
  end
end
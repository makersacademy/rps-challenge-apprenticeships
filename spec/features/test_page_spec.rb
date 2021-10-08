feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end
feature 'submitting names' do
  scenario 'entering names' do
    visit '/'
    fill_in :name, with: 'Yusuf'
    click_button 'Submit'
    expect(page).to have_content('Hello Yusuf! Let\'s play:')
  end
  
end

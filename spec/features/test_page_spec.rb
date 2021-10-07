feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end

feature 'enter name' do
  scenario 'regsiter name' do
    vist ('/')
    fill_in :player_1_name, with: 'Kirsty'
    click_button 'Submit'
    expect(page).to have_content 'Kirsty'
  end
end

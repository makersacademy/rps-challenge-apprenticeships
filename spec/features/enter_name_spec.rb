feature 'can enter name' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player1_name, with: 'Dave'
    click_button 'Battle'
    expect(page).to have_content 'Dave'
  end
end

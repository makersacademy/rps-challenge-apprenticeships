feature 'enter name' do
  it 'displays message' do
    visit ('/')
    expect(page).to have_content 'Please enter your name:'
  end
  scenario 'submitting name' do
    visit ('/')
    fill_in :player_name, with: 'Ken' 
  end
end
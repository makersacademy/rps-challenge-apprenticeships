feature 'enter name' do
  scenario 'user submits name' do
    visit ('/')
    fill_in :name, with: 'Professor X'
    click_button 'Submit'
    expect(page).to have_content 'Professor X'
  end
end

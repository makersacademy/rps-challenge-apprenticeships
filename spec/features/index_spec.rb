feature 'Enter name' do
  scenario 'submitting name' do
    name_and_submit
    expect(page).to have_content 'Hamid'
  end
end
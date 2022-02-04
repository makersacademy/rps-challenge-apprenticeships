feature 'Enter names' do
  scenario 'player submit name' do
    enter_name
    expect(page).to have_content('Anna')
  end
end

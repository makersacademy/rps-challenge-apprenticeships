feature 'Play page' do
  scenario 'visit play' do
    visit '/play'
    expect(page).to have_content('Make your choice!')
  end
end
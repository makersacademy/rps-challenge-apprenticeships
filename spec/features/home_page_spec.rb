feature 'home page' do
  scenario 'show home page' do
    visit '/'
    expect(page).to have_content('Rock Paper Scissors')
  end
end
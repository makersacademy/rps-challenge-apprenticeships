feature 'Register name' do
  scenario 'submitting names' do
    visit '/'
    fill_in 'name', with: 'Marketer'
    expect(page).to have_content 'Welcome, Marketer, to the Rock, Paper, Scissors game!'
  end
end

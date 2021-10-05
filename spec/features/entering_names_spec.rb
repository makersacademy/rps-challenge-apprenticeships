feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in 'name', with: 'Beckie'
    click_button 'Submit'
    expect(page).to have_content 'Hello Beckie! Welcome to Rock, Paper, Scissors. Are you ready?'
  end
end

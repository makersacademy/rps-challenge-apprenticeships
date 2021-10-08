feature 'Test homepage: ' do
  scenario 'Can run app and check homepage content' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!'
  end
end

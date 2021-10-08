feature 'homepage' do
  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content('Ready to play Rock, Paper, Scissors?')
  end
end

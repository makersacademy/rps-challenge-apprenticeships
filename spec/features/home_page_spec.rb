feature 'homepage' do
  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content('Ready to play Rock, Paper, Scissors?')
  end

  scenario 'user enters name' do
    sign_in_and_play
    expect(page).to have_content 'Player 1: Dan'
  end
end

feature 'Feature - Register name - single player' do
  scenario 'submit name, return name' do
    register_for_singleplayer_and_play
    expect(page).to have_content 'Welcome to Rock Paper Scissors, Emily!'
  end
end

feature 'Feature - Register name - multiplayer' do
  scenario 'submit name, return both names' do
    register_for_multiplayer_and_play
    expect(page).to have_content 'Welcome to Rock Paper Scissors, Emily and Monty!'
  end
end

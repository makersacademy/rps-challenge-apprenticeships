feature 'Forms work' do
  scenario 'test page works' do
    visit '/test'
    expect(page).to have_content("test page")
  end

  scenario 'visit test page' do
    visit '/'
    expect(page).to have_content("What's your name?")
  end

  scenario 'name can be entered' do
    visit '/'
    fill_in 'name', :with => 'Fred'
    click_button 'submit'
    expect(page).to have_content("Welcome to Rock Paper Scissors, Fred!")
  end

  scenario 'can visit singleplayer page' do
    visit '/'
    click_button 'submit'
    click_button 'submit_singleplayer'
    expect(page).to have_content("Rock, Paper or Scissors?")
  end

  scenario 'player can make a singleplayer choice' do
    visit '/singleplayer'
    click_button 'submit'
    expect(page).to have_content("You chose Rock")
  end

  scenario 'can visit multiplayer page' do
    visit '/'
    click_button 'submit'
    click_button 'submit_multiplayer'
    expect(page).to have_content("Player 2")
  end

  scenario 'can play mutliplayer game' do
    visit '/multiplayer'
    select "Rock", :from => "choice1"
    select "Paper", :from => "choice2"
    click_button 'submit'

    expect(page).to have_content("Player2 wins!")
  end

end

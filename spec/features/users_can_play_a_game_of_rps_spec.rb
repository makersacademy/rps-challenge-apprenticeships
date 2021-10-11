feature 'Users play a round against the ai' do
  scenario 'Player selects rock and wins' do
    sign_up_and_start_single_player_game
    expect(page).to have_selector('#rock-option')
    expect(page).to have_selector('#paper-option', visible: true)
    expect(page).to have_selector('#scissors-option', visible: true)
    choose "rock-option"
    allow_any_instance_of(Array).to receive(:sample).and_return(GameStatusCodes::SCISSORS)
    click_button "start-vs-pc"
    expect(page).to have_current_path("/result")
    expect(page).to have_selector('#round_winner', text: "player 1 won that round!")
    expect(page).to have_selector('#results_table')
  end

  scenario 'Player selects rock and loses' do
    sign_up_and_start_single_player_game
    expect(page).to have_selector('#rock-option')
    expect(page).to have_selector('#paper-option', visible: true)
    expect(page).to have_selector('#scissors-option', visible: true)
    choose "rock-option"
    allow_any_instance_of(Array).to receive(:sample).and_return(GameStatusCodes::PAPER)
    click_button "start-vs-pc"
    expect(page).to have_current_path("/result")
    expect(page).to have_selector('#round_winner', text: "ai won that round!")
    expect(page).to have_selector('#results_table')
  end

  scenario 'Player selects paper and wins' do
    sign_up_and_start_single_player_game
    expect(page).to have_selector('#rock-option')
    expect(page).to have_selector('#paper-option', visible: true)
    expect(page).to have_selector('#scissors-option', visible: true)
    choose "paper-option"
    allow_any_instance_of(Array).to receive(:sample).and_return(GameStatusCodes::ROCK)
    click_button "start-vs-pc"
    expect(page).to have_current_path("/result")
    expect(page).to have_selector('#round_winner', text: "player 1 won that round!")
    expect(page).to have_selector('#results_table')
  end

  scenario 'Player selects paper and loses' do
    sign_up_and_start_single_player_game
    expect(page).to have_selector('#rock-option')
    expect(page).to have_selector('#paper-option', visible: true)
    expect(page).to have_selector('#scissors-option', visible: true)
    choose "paper-option"
    allow_any_instance_of(Array).to receive(:sample).and_return(GameStatusCodes::SCISSORS)
    click_button "start-vs-pc"
    expect(page).to have_current_path("/result")
    expect(page).to have_selector('#round_winner', text: "ai won that round!")
    expect(page).to have_selector('#results_table')
  end

  scenario 'Player selects scissors and wins' do
    sign_up_and_start_single_player_game
    expect(page).to have_selector('#rock-option')
    expect(page).to have_selector('#paper-option', visible: true)
    expect(page).to have_selector('#scissors-option', visible: true)
    choose "scissors-option"
    allow_any_instance_of(Array).to receive(:sample).and_return(GameStatusCodes::PAPER)
    click_button "start-vs-pc"
    expect(page).to have_current_path("/result")
    expect(page).to have_selector('#round_winner', text: "player 1 won that round!")
    expect(page).to have_selector('#results_table')
  end

  scenario 'Player selects scissors and loses' do
    sign_up_and_start_single_player_game
    expect(page).to have_selector('#rock-option')
    expect(page).to have_selector('#paper-option', visible: true)
    expect(page).to have_selector('#scissors-option', visible: true)
    choose "scissors-option"
    allow_any_instance_of(Array).to receive(:sample).and_return(GameStatusCodes::ROCK)
    click_button "start-vs-pc"
    expect(page).to have_current_path("/result")
    expect(page).to have_selector('#round_winner', text: "ai won that round!")
    expect(page).to have_selector('#results_table')
  end

  scenario 'Players draw' do
    sign_up_and_start_single_player_game
    expect(page).to have_selector('#rock-option')
    expect(page).to have_selector('#paper-option', visible: true)
    expect(page).to have_selector('#scissors-option', visible: true)
    choose "scissors-option"
    allow_any_instance_of(Array).to receive(:sample).and_return(GameStatusCodes::SCISSORS)
    click_button "start-vs-pc"
    expect(page).to have_current_path("/result")
    expect(page).to have_selector('#round_winner', text: "It's a draw!")
    expect(page).to have_selector('#results_table')
  end
end

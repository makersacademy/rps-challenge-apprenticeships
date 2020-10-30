feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end

feature 'homepage' do
  scenario 'vist home page' do
    visit '/home'
    expect(page).to have_content('Welcome to')
  end
  scenario 'displays field to allow user to input a name' do
    visit '/home'
    expect(page).to have_content("Enter Player One's name")
  end
  scenario 'displays field to allow user to input a second name' do
    visit '/home'
    expect(page).to have_content("Enter Player Two's name")
  end
end

feature 'play' do
  scenario 'once the user submits their name a new page is loaded' do
    sign_in_and_play
    expect(page).to have_content 'Jack, please select your move'
  end
  scenario 'The user can select a move and it will move the user to the result page' do
    sign_in_and_play
    make_move
    expect(page).to have_content 'Jack selected: Scissors'
  end
  scenario 'The user can select a move and it will show the computer move' do
    sign_in_and_play
    make_move
    expect(page).to have_content 'Josh selected: Paper'
  end
  scenario 'It will show who has won - player one' do
    sign_in_and_play
    make_move
    expect(page).to have_content 'Jack Won!'
  end
  scenario 'It will show who has won - player two' do
    sign_in_and_play
    make_move2
    expect(page).to have_content 'Josh Won!'
  end
end

feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end

  scenario 'home' do
    visit '/'
    expect(page).to have_content('Welcome')
  end

  scenario 'form on the home page' do
  visit('/')
  fill_in :player1, with: 'Neneh'
  click_button 'Submit'
  expect(page).to have_content('Game')
  end 
  
  scenario 'visit play page' do
    visit('/')
    click_button 'Submit'
    expect(page).to have_content('Game time')
    end

  scenario 'start game' do
    visit('/')
    click_button 'Submit'
    expect(page).to have_content('Start')
  end

  scenario 'Results of the game' do
    visit('/')
    click_button 'Submit'
    expect(page).to have_content('game')
  end

end

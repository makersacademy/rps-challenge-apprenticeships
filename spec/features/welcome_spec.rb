feature 'welcome' do
  scenario 'visit welcome page' do
    visit '/'
    expect(page).to have_content('Welcome to Rock, Paper, Scissors')
  end
end

feature 'get name' do 
  scenario 'should take player name and return it' do 
  name_and_play
  expect(page).to have_content('Hi Rosie, lets play Rock, Paper, Scissors')
  end 
end 

feature 'choosing a move' do 
  scenario 'should take to rock page if rock is chosen' do 
    name_and_play
    click_button 'rock'
  expect(page).to have_content('you chose rock')
  end 
end 